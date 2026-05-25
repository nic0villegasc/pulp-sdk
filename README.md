# PULP-SDK (CHIP-Uandes)

This repository contains the core Software Development Kit (SDK) and build environment for compiling, simulating, and deploying applications on PULP (Parallel Ultra Low Power) RISC-V architectures. 

> **Note:** This repository serves **strictly as the SDK and toolchain**. Application source code and deployment projects are hosted in separate repositories to maintain a clean structure.

## Repository Structure

To help developers navigate the SDK and avoid breaking internal build paths, here is a breakdown of the core directories:

* **`configs/`** - Environment setup scripts. You must source the appropriate script for your target hardware (e.g., `siracusa.sh`) before compiling any downstream applications.
* **`rtos/`** - Source code for the Real-Time Operating Systems (e.g., PULP-OS) supported by the chips.
* **`rules/`** - Internal Makefile definitions and compilation rules. External applications rely on these rules to compile RISC-V binaries correctly.
* **`tools/`** - Internal build utilities, hardware configuration generators, and simulator (GVSoC) components.
* **`ext/` & `ext_libs/`** - External dependencies, mathematical libraries, and pre-compiled static archives.
* **`tests/`** - SDK validation tests to verify the toolchain builds and simulates correctly.
* **`build/` & `install/` *(Git-Ignored)*** - Auto-generated directories. `build/` contains intermediate object files, and `install/` contains the final compiled simulator binaries and SDK headers.

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

## Testing the Installation

If everything was correctly installed, you should be able to run the built-in examples using the GVSoC (event-driven) simulator.

To run the `hello` test on the 8-core cluster, execute:

```bash
cd ~/PULP/pulp-sdk/tests/hello
make clean all run USE_CLUSTER=1 NUM_CORES=8 platform=gvsoc
```

*If the installation was successful, you will see output from all 8 cores printing a success message in your terminal.*

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

```
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
