$(call compile_only_if,$(CONFIG_COMPONENT_UPY),*.o)

COMPONENT_OWNBUILDTARGET := true
COMPONENT_OWNCLEANTARGET := true

build:
#	$(PROJECT_PATH)/tools/upython.sh $(PROJECT_PATH)/tools

clean:
	rm -R $(PROJECT_PATH)/tools/src/micropython/ports/esp32/build
