#import <Foundation/Foundation.h>
#import <objc/runtime.h>

@interface ObjectiveMain: NSObject {
}
+ (void)test;
@end

@implementation ObjectiveMain

+ (void)test {
	NSString *string = @"Hello world";
	NSLog(@"String: %@", string);
}

@end

