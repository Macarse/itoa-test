MODULE_PATH := $(call my-dir)
include $(CLEAR_VARS)

MODULE_NAME := cocosdenshion

MODULE_SRC_FILES := \
    SimpleAudioEngine.cpp \
		jni/SimpleAudioEngineJni.cpp \
		./../cocos2dx/platform/android/jni/JniHelper.cpp

MODULE_C_INCLUDES += \
		$(MODULE_PATH)/include \
    $(MODULE_PATH)/../cocos2dx/include \
    $(MODULE_PATH)/../cocos2dx/platform \
    $(MODULE_PATH)/../cocos2dx/platform/android/jni

MODULE_LDLIBS := -llog

include $(BUILD_SHARED_LIBRARY)


