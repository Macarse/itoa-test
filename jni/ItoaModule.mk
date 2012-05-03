MODULE_PATH := $(call my-dir)
include $(CLEAR_VARS)

include $(MODULE_PATH)/../../objc/ItoaModule.mk

MODULE_NAME := hello-jni
MODULE_SRC_FILES += ObjectiveMain.m
MODULE_SRC_FILES += hello-jni.c

MODULE_LDLIBS := -llog
MODULE_SHARED_LIBRARIES := objc 
    
include $(BUILD_SHARED_LIBRARY)
