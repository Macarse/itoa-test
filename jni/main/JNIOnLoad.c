#include <CoreFoundation/CFRuntime.h>
#include <jni.h>

jint JNI_OnLoad(JavaVM* vm, void* reserved) {

    // Initialize CoreFoundation
    _CFInitialize();

    // Load Objective-C classes
    extern void call_dyld_handlers();
    call_dyld_handlers();

    return JNI_VERSION_1_6;
}

