LOCAL_PATH:= $(call my-dir)

include $(CLEAR_VARS)
LOCAL_MODULE := png
LOCAL_SRC_FILES := libpng.a
include $(PREBUILT_STATIC_LIBRARY)

include $(CLEAR_VARS)
LOCAL_CFLAGS := -DHAVE_ANDROID_OS
LOCAL_SRC_FILES := screenshot.c
LOCAL_LDLIBS := -lz -llog
LOCAL_STATIC_LIBRARIES := libpng

LOCAL_MODULE := screenshot

include $(BUILD_EXECUTABLE)





