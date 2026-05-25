# PULP-SDK (CHIP-Uandes)

This repository contains the core Software Development Kit (SDK) and build environment for compiling, simulating, and deploying applications on PULP (Parallel Ultra Low Power) RISC-V architectures.

> **Note:** This repository serves **strictly as the SDK and toolchain**. Application source code and deployment projects are hosted in separate repositories to maintain a clean structure.

## Repository Structure

To help developers navigate the SDK and avoid breaking internal build paths, here is a breakdown of the core directories:

* **`configs/`** - Environment setup scripts. You must source the appropriate script for your target hardware (e.g., `siracusa.sh`) before compiling any downstream applications.
* **`rtos/`** - Source code for the Real-Time Operating Systems (e.g., PULP-OS) supported by the chips.
* **`rules/`** - Internal Makefile definitions and compilation rules. External applications rely on these rules to compile RISC-V binaries correctly.
* **`tools/`** - Internal build utilities, hardware configuration generators, and simulator (GVSoC) components.
* **`ext/` & `ext_libs/**` - External dependencies, mathematical libraries, and pre-compiled static archives.
* **`tests/`** - SDK validation tests to verify the toolchain builds and simulates correctly.
* **`build/` & `install/` *(Git-Ignored)*** - Auto-generated directories. `build/` contains intermediate object files, and `install/` contains the final compiled simulator binaries and SDK headers.

---

## Complete Installation Guide

*Updated by Nicolás Villegas*

Follow these instructions verbatim to set up the environment from scratch.

### 1. Install the RISC-V GCC Toolchain

You must install the official [PULP RISC-V GNU Toolchain](https://github.com/pulp-platform/pulp-riscv-gnu-toolchain) before building the SDK. The following commands install the toolchain in `/opt/riscv`. *(Make sure you have write access to this directory or run with `sudo` where indicated).*

```bash
# Clone the toolchain
git clone --recursive https://github.com/pulp-platform/pulp-riscv-gnu-toolchain.git

# Install prerequisites
sudo apt install autoconf automake autotools-dev curl libmpc-dev libmpfr-dev libgmp-dev gawk build-essential bison flex texinfo gperf libtool patchutils bc zlib1g-dev

# Build and install the toolchain
cd pulp-riscv-gnu-toolchain/
./configure --prefix=/opt/riscv --with-arch=rv32imc --with-cmodel=medlow --enable-multilib
sudo make -j8

# Add the toolchain to your environment variables permanently
echo "export PULP_RISCV_GCC_TOOLCHAIN=/opt/riscv" >> ~/.bashrc
echo "export PATH=\$PATH:/opt/riscv/bin" >> ~/.bashrc
source ~/.bashrc
```

### 2. Install the PULP-SDK

Once the compiler is installed, you can clone and build this SDK.

```bash
# Create a workspace and clone this repository
mkdir -p ~/PULP
cd ~/PULP
git clone https://github.com/nic0villegasc/pulp-sdk.git
cd pulp-sdk/

# Install SDK dependencies
sudo apt install -y build-essential git libftdi-dev libftdi1 doxygen python3-pip libsdl2-dev curl cmake libusb-1.0-0-dev scons gtkwave libsndfile1-dev rsync autoconf automake texinfo libtool pkg-config libsdl2-ttf-dev
pip3 install --user argcomplete pyelftools

# Configure the environment for the desired target (e.g., Siracusa)
source ~/PULP/pulp-sdk/configs/siracusa.sh

# Build the SDK and GVSoC Simulator
make build
```

> **Note:** The SDK can be configured for different targets. You must run the source command each time you open a new terminal. If you only ever work with one architecture, you can automate this by adding `echo "source ~/PULP/pulp-sdk/configs/siracusa.sh" >> ~/.bashrc` to your profile.

---

## Testing the Installation (Simulation)

If everything was correctly installed, you should be able to run the built-in examples using the GVSoC (event-driven) simulator. To run the `hello` test on the 8-core cluster, execute:

```bash
cd ~/PULP/pulp-sdk/tests/hello
make clean all run USE_CLUSTER=1 NUM_CORES=8 platform=gvsoc
```

*If successful, you will see output from all 8 cores printing a success message in your terminal.*

---

## Hardware Deployment (Siracusa Board)

To run your code on physical hardware rather than a simulator, you need to install debugging and serial communication tools.

### 1. Host Machine Setup

#### Linux / WSL Requirements

**1. Build OpenOCD:** OpenOCD provides on-chip programming and debugging support.

```bash
cd ~/pulp-riscv-gnu-toolchain/
git clone git@github.com:openocd-org/openocd.git
cd openocd/
./bootstrap
./configure
make
sudo make install
```

**2. Install Minicom:** This will be used to visualize the serial UART output.

```bash
sudo apt install minicom
```

**3. Configure Permissions (Native Linux):** Avoid needing `sudo` for hardware interaction by adding your user to the dialout and plugdev groups.

```bash
sudo usermod -a -G dialout $USER
sudo useradd -G plugdev $USER
# Copy the required udev rules file to /etc/udev/rules.d/
sudo reboot
```

**4. USB Passthrough (Windows WSL only):** If using WSL, you must bind the USB device to your Linux instance using `usbipd` (install the Windows host and WSL Linux releases).
Open an **Administrator PowerShell** in Windows and run:

```powershell
usbipd wsl list
usbipd wsl attach --busid <bus-number>
# If you have multiple WSL instances, specify it:
# usbipd wsl attach --distribution <wsl name> --busid <bus-number>
```

#### macOS Requirements (OrbStack)

Using OrbStack is a fantastic way to run Linux toolchains on a Mac, but directly passing USB hardware to a VM can be finicky. The most reliable workflow is to **split the tasks**:

* **Mac (Host):** Handles physical hardware connections (OpenOCD and Minicom).
* **Ubuntu (OrbStack):** Handles software compilation and debugging (PULP SDK, GCC, GDB).

Install OpenOCD and Minicom locally on your Mac via Homebrew:

```bash
brew install openocd minicom
```

### 2. Connecting the Board

Before connecting, ensure you understand each element of the board (refer to the [Google Drive]([https://www.google.com/search?q=%23](https://drive.google.com/drive/folders/1q8hh_wkMEnWQvb8YGOjo5aizQR1Hw_26?usp=sharing))).

* **Power:** The easiest method is powering it via USB; the board internally generates all required voltages.
* **EVB Configuration:** If using a socketed EVB, use a torque wrench and apply exactly **1 in-lbs (~11.3 N-cm)** (required bit).
* **Jumpers:** By default, all voltages are generated internally. Ensure jumper positions (1-2) are set on the eight power select jumpers on the left side of the board.

### 3. Application Code Adjustments for Siracusa

By default, the SDK examples map UART to `GPIO32` and `GPIO33`. On the Siracusa board, the UART pins are **`GPIO38` (Tx)** and **`GPIO39` (Rx)**. You must reconfigure the pad control in your application's C code:

```c
#if defined(RTL_PLATFORM)
    padctrl_mode_set(PAD_GPIO39, PAD_MODE_UART0_RX);
    padctrl_mode_set(PAD_GPIO38, PAD_MODE_UART0_TX);
#endif
```

### 4. Running Workloads: Linux & WSL Workflow

*(If using a VM, ensure the `FT2232H-56Q` device is attached. Verify by running `lsusb` or checking `/dev/`.)*

You will need **three separate terminal windows**:

**Terminal 1: OpenOCD**
Start the OpenOCD server using the configuration file included in this repository.

```bash
sudo openocd -f path/to/repo/openocd-ft2232h.cfg
```

The output should look similar to this when OpenOCD connects correctly to the chip:

```
Open On-Chip Debugger 0.12.0
Licensed under GNU GPL v2
For bug reports, read
        http://openocd.org/doc/doxygen/bugs.html
Info : auto-selecting first available session transport "jtag". To override use 'transport select <transport>'.
Info : Hardware thread awareness created
Info : Listening on port 6666 for tcl connections
Info : Listening on port 4444 for telnet connections
Warn : libusb_detach_kernel_driver() failed with LIBUSB_ERROR_ACCESS, trying to continue anyway
Info : clock speed 5000 kHz
Info : JTAG tap: siracusa.unknown0 tap/device found: 0x10102001 (mfg: 0x000 (<invalid>), part: 0x0102, ver: 0x1)
Info : JTAG tap: siracusa.dmi tap/device found: 0x249511c3 (mfg: 0x0e1 (Wintec Industries), part: 0x4951, ver: 0x2)
Info : datacount=2 progbufsize=8
Info : Examined RISC-V core; found 1024 harts
Info :  hart 992: XLEN=32, misa=0x40901104
Info : starting gdb server for siracusa.fc on 3333
Info : Listening on port 3333 for gdb connections
```
(Note: If you get an error, try pressing the restart button or power cycling the board).

**Terminal 2: Minicom (UART)**
Connect to the serial output.

```bash
minicom -D /dev/ttyUSB1
```

*Tip:* To prevent text rendering issues, enable "auto-carriage return". In Minicom, press **`Ctrl-A`**, then **`Z`**, then **`U`**.

**Terminal 3: Compile & Debug (GDB)**
Compile the code for the `rtl` platform (specifying UART for I/O), then load it via GDB.

```bash
cd ~/PULP/pulp-sdk/tests/hello
make clean all platform=rtl io=uart USE_CLUSTER=1 NUM_CORES=8
riscv32-unknown-elf-gdb BUILD/SIRACUSA/GCC_RISCV/test/test

# Inside GDB:
gdb> target ext:3333
gdb> load

```

*Tip:* Switch to GDB TUI mode for a better debugging experience by pressing **`Ctrl-X`**, then **`A`**. You can now start the application (`c`), add breakpoints (`b main`), or single step (`n`).

### 5. Running Workloads: macOS (OrbStack) Workflow

You will need **three separate terminal windows**, distributed between your Mac host and OrbStack instance:

**Terminal 1: OpenOCD (Run on Mac Host)**
Your Mac directly connects to the FT2232H chip. Locate the `openocd-ft2232h.cfg` file provided in this repository and run:

```bash
openocd -f openocd-ft2232h.cfg
```

*(OpenOCD is now hosting a GDB server on your Mac at `localhost:3333`).*

**Terminal 2: Minicom (Run on Mac Host)**
macOS names serial ports differently than Linux. Find your port:

```bash
ls /dev/cu.usbserial*
```

You will likely see two entries. The second one is usually the equivalent of Linux's `ttyUSB1`. Connect to it (replace `XXXX` with your specific ID):

```bash
minicom -D /dev/cu.usbserial-XXXX -b 115200
```

*Tip:* To enable "auto-carriage return" on macOS Minicom, press **`ESC+Z`**, then **`U`**.

**Terminal 3: Compile & GDB (Run inside OrbStack/Ubuntu)**
Compile the code exactly as you would on Linux:

```bash
cd ~/PULP/pulp-sdk/tests/hello
make clean all platform=rtl io=uart USE_CLUSTER=1 NUM_CORES=8
riscv32-unknown-elf-gdb BUILD/SIRACUSA/GCC_RISCV/test/test
```

**Crucial GDB Connection Step:** Because GDB is inside OrbStack and OpenOCD is on your Mac host, you cannot connect to `localhost:3333`. You must explicitly target the Mac host using OrbStack's internal network:

```gdb
gdb> target extended-remote host.orb.internal:3333
gdb> load
```

By handling USB hardware natively on macOS and software compilation on OrbStack, you bypass USB-passthrough headaches while keeping the toolchain perfectly isolated.

---

## Compiling Downstream Applications

Because application code lives in separate repositories, you must rely on this SDK to build them. As long as you have sourced the configuration script (which happens automatically if you added it to your `~/.bashrc` above), your applications will find the SDK automatically.

```bash
# Navigate to your custom application repository
cd /path/to/your-custom-app

# Compile and run on GVSoC
make clean all run platform=gvsoc
```

## Acknowledgments

This repository is an adapted, stripped-down version of the official [PULP-SDK](https://github.com/pulp-platform/pulp-sdk), optimized to serve as an independent, clean toolchain for our laboratory.

### Citing

If you intend to use or reference GVSoC for an academic publication, please consider citing it:

```text
@INPROCEEDINGS{9643828,
	author={Bruschi, Nazareno and Haugou, Germain and Tagliavini, Giuseppe and Conti, Francesco and Benini, Luca and Rossi, Davide},
	booktitle={2021 IEEE 39th International Conference on Computer Design (ICCD)},
	title={GVSoC: A Highly Configurable, Fast and Accurate Full-Platform Simulator for RISC-V based IoT Processors},
	year={2021},
	volume={},
	number={},
	pages={409-416},
	doi={10.1109/ICCD53106.2021.00071}}

```