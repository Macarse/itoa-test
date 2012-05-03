MODULE_PATH := $(call my-dir)
include $(CLEAR_VARS)

MODULE_NAME := hello-jni

MODULE_SRC_FILES := \
    JNIOnLoad.c \
    ObjectiveMain.m \

MODULE_LDLIBS := -llog

include $(BUILD_SHARED_LIBRARY)
APP_SHARED_LIBRARIES += $(TARGET_ITOA_LIBRARIES)
