#include <jni.h>
#import <Foundation/Foundation.h>
#import <objc/runtime.h>
#import <SimpleAudioEngine.h>
#import <cocos2d.h>
#include <android/log.h>

#define  LOG_TAG    "main"
#define  LOGD(...)  __android_log_print(ANDROID_LOG_DEBUG,LOG_TAG,__VA_ARGS__)

@interface ObjectiveMain: NSObject
+ (NSString*)test;
@end

@implementation ObjectiveMain

+ (NSString*)test {
	NSString *string = [NSString stringWithFormat:@"Cocos2d version: %@", cocos2dVersion()];
    return string;
}

@end

///////////////////////////////////////

extern "C"
{

void Java_org_cocos2dx_lib_Cocos2dxRenderer_nativeInit(JNIEnv*  env, jobject thiz, jint w, jint h) {
    LOGD("NativeInit");
}

jstring
Java_com_example_hellojni_HelloJni_stringFromJNI( JNIEnv* env, jobject thiz )
{
    jstring result = NULL;

    {
        NSAutoreleasePool* pool = [NSAutoreleasePool new];
        [[SimpleAudioEngine sharedEngine] playEffect:@"menu_selection.mp3"];
        result =  env->NewStringUTF([[ObjectiveMain test] UTF8String]);
        [pool drain];
    }

    return result;
}
}
