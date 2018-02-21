$(call compile_only_if,$(CONFIG_COMPONENT_MQTT),./sources/*.o)

COMPONENT_SRCDIRS := ./sources/
COMPONENT_ADD_INCLUDEDIRS := ./sources/include
#COMPONENT_PRIV_INCLUDEDIRS :=

#EXTRA_CFLAGS := -DICACHE_RODATA_ATTR
CFLAGS += -Wno-error=implicit-function-declaration -Wno-error=format= -DHAVE_CONFIG_H
