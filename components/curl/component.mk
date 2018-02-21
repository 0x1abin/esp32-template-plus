$(call compile_only_if,$(CONFIG_COMPONENT_CURL),*.o)

COMPONENT_SRCDIRS := ./sources/lib ./sources/lib/vauth ./sources/lib/vtls
COMPONENT_PRIV_INCLUDEDIRS := ./sources/lib ./sources/include
CFLAGS+=-DHAVE_CONFIG_H -DBUILDING_LIBCURL
