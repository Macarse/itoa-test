MODULE_PATH := $(call my-dir)
include $(CLEAR_VARS)

MODULE_NAME := cocosdenshion

MODULE_SRC_FILES := \
    SimpleAudioEngine.mm

MODULE_C_INCLUDES += \
		$(MODULE_PATH)/../CocosDenshionX/include

MODULE_LDLIBS := -llog
MODULE_SHARED_LIBRARIES += cocosdenshionx

include $(BUILD_SHARED_LIBRARY)


