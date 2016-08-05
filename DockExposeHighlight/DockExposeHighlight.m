//
//  DockExposeHighlight.m
//  DockExposeHighlight
//
//  Created by husile on 7/29/16.
//

#import <CoreGraphics/CGColor.h>
#import <ParasiteRuntime/ParasiteRuntime.h>

extern CGColorRef CGColorCreateGenericRGB(CGFloat red, CGFloat green, CGFloat blue, CGFloat alpha);

PSHook4(CGColorRef, CGColorCreateGenericRGB, CGFloat, red, CGFloat, green, CGFloat, blue, CGFloat, alpha) {
    return _old(247.0/255, 247.0/255, 243.0/255, 0.93);
}

@interface WVMinimizedAndRecentsItemLayer : CALayer
- (struct CGRect)_frameForHighlight;
@end

ZKSwizzleInterface(HookWVMinimizedAndRecentsItemLayer, WVMinimizedAndRecentsItemLayer, CALayer)

@implementation HookWVMinimizedAndRecentsItemLayer

- (struct CGRect)_frameForHighlight {
    return CGRectMake(0, 0, 0, 0);
}

@end

PSInitialize {
    PSHookFunction(CGColorCreateGenericRGB);
}