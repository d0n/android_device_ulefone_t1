include $(call all-subdir-makefiles)

LINKER_FORCED_SHIM_LIBS := $(LINKER_FORCED_SHIM_LIBS):/system/vendor/lib/libvtmal.so|libshim_vtmal.so
