MODULE_PATH := $(call my-dir)
include $(CLEAR_VARS)

MODULE_NAME := cocos2dx

MODULE_SRC_FILES := \
    platform/android/jni/JniHelper.cpp

MODULE_C_INCLUDES += \
    $(MODULE_PATH)/include \
    $(MODULE_PATH)/platform \
    $(MODULE_PATH)/platform/android/jni

MODULE_LDLIBS := -llog

include $(BUILD_SHARED_LIBRARY)

