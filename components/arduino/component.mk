$(call compile_only_if,$(CONFIG_COMPONENT_ARDUINO),*.o)

ARDUINO_CORE_LIBS := $(patsubst $(COMPONENT_PATH)/sources/%,%,$(sort $(dir $(wildcard $(COMPONENT_PATH)/sources/libraries/*/*/))))

COMPONENT_ADD_INCLUDEDIRS := sources/cores/esp32 sources/variants/esp32 $(ARDUINO_CORE_LIBS)
COMPONENT_PRIV_INCLUDEDIRS := sources/cores/esp32/libb64
COMPONENT_SRCDIRS := sources/cores/esp32/libb64 sources/cores/esp32 sources/variants/esp32 $(ARDUINO_CORE_LIBS)
CXXFLAGS += -fno-rtti
