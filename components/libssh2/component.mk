$(call compile_only_if,$(CONFIG_COMPONENT_LIBSSH2),*.o)

COMPONENT_SRCDIRS := ./sources/src
COMPONENT_ADD_INCLUDEDIRS := ./include ./sources/src  ./sources/include
