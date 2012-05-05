MODULE_PATH := $(call my-dir)
include $(CLEAR_VARS)

MODULE_NAME := cocosdenshionx

MODULE_SRC_FILES := \
    SimpleAudioEngineX.cpp \
		jni/SimpleAudioEngineJni.cpp \

MODULE_C_INCLUDES += \
		$(MODULE_PATH)/include \
    $(MODULE_PATH)/../cocos2dx/include \
    $(MODULE_PATH)/../cocos2dx/platform \
    $(MODULE_PATH)/../cocos2dx/platform/android/jni

MODULE_LDLIBS := -llog
MODULE_SHARED_LIBRARIES += cocos2dx

include $(BUILD_SHARED_LIBRARY)
