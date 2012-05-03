include $(call my-dir)/../../objc/ItoaModule.mk
include $(call my-dir)/../../macemu/ItoaModule.mk
include $(call my-dir)/../../cleancf/ItoaModule.mk
include $(call my-dir)/../../foundation/ItoaModule.mk

MODULE_PATH := $(call my-dir)
include $(CLEAR_VARS)

MODULE_NAME := hello-jni

MODULE_SRC_FILES += ObjectiveMain.m
MODULE_SRC_FILES += hello-jni.c

MODULE_LDLIBS := -llog
MODULE_SHARED_LIBRARIES := objc macemu cf foundation
    
include $(BUILD_SHARED_LIBRARY)
