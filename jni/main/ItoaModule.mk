MODULE_PATH := $(call my-dir)
include $(CLEAR_VARS)

MODULE_NAME := hello-jni

MODULE_SRC_FILES := \
    JNIOnLoad.cpp \
    ObjectiveMain.mm \

MODULE_C_INCLUDES += \
		$(MODULE_PATH)/../CocosDenshion \
    $(MODULE_PATH)/../cocos2d \
    $(MODULE_PATH)/../cocos2d/portIncludes \
    $(MODULE_PATH)/../cocos2d/CoreGraphics \
    $(MODULE_PATH)/../cocos2dx/platform \
    $(MODULE_PATH)/../cocos2dx/platform/android/jni

MODULE_LDLIBS := -llog
MODULE_SHARED_LIBRARIES += cocosdenshion cocos2d cocos2dx

include $(BUILD_SHARED_LIBRARY)

