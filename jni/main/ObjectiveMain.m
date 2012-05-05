#include <jni.h>
#import <Foundation/Foundation.h>
#import <objc/runtime.h>
#import <SimpleAudioEngine.h>

@interface ObjectiveMain: NSObject
+ (NSString*)test;
@end

@implementation ObjectiveMain

+ (NSString*)test {
	NSString *string = [NSString stringWithFormat:@"Hello %@", @"World"];
    return string;
}

@end

///////////////////////////////////////

jstring
Java_com_example_hellojni_HelloJni_stringFromJNI( JNIEnv* env, jobject thiz )
{
    jstring result = NULL;

    {
        NSAutoreleasePool* pool = [NSAutoreleasePool new];
        [[SimpleAudioEngine sharedEngine] playEffect:@"menu_selection.mp3"];
        result =  (*env)->NewStringUTF(env, [[ObjectiveMain test] UTF8String]);
        [pool drain];
    }

    return result;
}
