MODULE_PATH := $(call my-dir)
include $(CLEAR_VARS)

MODULE_NAME := hello-jni

MODULE_SRC_FILES := \
    JNIOnLoad.c \
    ObjectiveMain.mm \

MODULE_C_INCLUDES += \
		$(MODULE_PATH)/../CocosDenshion/include

MODULE_LDLIBS := -llog
MODULE_SHARED_LIBRARIES += cocosdenshion

include $(BUILD_SHARED_LIBRARY)
APP_SHARED_LIBRARIES += $(TARGET_ITOA_LIBRARIES)

