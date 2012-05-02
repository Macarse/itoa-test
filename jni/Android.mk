LOCAL_PATH := $(call my-dir)
include $(CLEAR_VARS)

subdirs += $(LOCAL_PATH)/hello-jni/Android.mk
subdirs += $(LOCAL_PATH)/../../objc/ItoaModule.mk


include $(subdirs)
