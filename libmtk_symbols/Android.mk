include $(CLEAR_VARS)
  LOCAL_SRC_FILES := libprogrambinary
  LOCAL_SHARED_LIBRARIES := program_binary_builder.cpp
  LOCAL_MODULE := libmtkshim_programbinary
  LOCAL_PROPRIETARY_MODULE := true
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
  LOCAL_SRC_FILES := vtservice.cpp
  LOCAL_SHARED_LIBRARIES := libvtmal
  LOCAL_MODULE := libmtkshim_vtmal
  LOCAL_PROPRIETARY_MODULE := true
include $(BUILD_SHARED_LIBRARY)
