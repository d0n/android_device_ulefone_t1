include $(call all-subdir-makefiles)

LINKER_FORCED_SHIM_LIBS := /system/vendor/lib/libvtmal.so|libshim_vtmal.so
LINKER_FORCED_SHIM_LIBS += /system/lib/libnetutils.so|libshim_ifc.so
