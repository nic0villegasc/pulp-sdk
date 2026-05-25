APP = test
APP_SRCS = test.c

APP_CFLAGS += -O3 -g

ifeq '$(platform)' 'rtl'
APP_CFLAGS    += -DRTL_PLATFORM=1
endif

ifeq '$(io)' 'uart'
APP_CFLAGS += -DIO_UART
endif

include $(RULES_DIR)/pmsis_rules.mk
