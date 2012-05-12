MODULE_PATH := $(call my-dir)
include $(CLEAR_VARS)

MODULE_NAME := cocos2d

MODULE_SRC_FILES := \
    cocos2d.mm \
    CCDirector.mm \
    

MODULE_C_INCLUDES += \
    $(MODULE_PATH) \
    $(MODULE_PATH)/portIncludes \
    $(MODULE_PATH)/Support \
    $(MODULE_PATH)/CoreGraphics \
		$(MODULE_PATH)/../cocos2dx/platform \

MODULE_CFLAGS := \
    -std=gnu99 \
    -fgnu89-inline

MODULE_LDLIBS := -llog -lGLESv1_CM
MODULE_SHARED_LIBRARIES += cocos2dx

include $(BUILD_SHARED_LIBRARY)

