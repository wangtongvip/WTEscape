//
//  NSObject+WTEscape.m
//  WTEscape
//
//  Created by WT on 2018/9/20.
//  Copyright © 2018年 王通. All rights reserved.
//

#import "NSObject+WTEscape.h"
#import <UIKit/UIKit.h>
#import <objc/runtime.h>

@implementation NSObject (WTEscape)

#ifdef DEBUG
- (NSString *)description {
    if ([self isKindOfClass:[UIResponder class]]) {
        return [NSString stringWithFormat:@"[%@ %p]",[self class], self];
    }
    return [self descriptionWithLevel:0];
}

- (NSString *)descriptionWithLevel:(NSInteger)level {
    
    NSMutableString *tempString = [NSMutableString string];
    [tempString appendFormat:@"[类型:%@]",[self class]];
    [tempString appendFormat:@"[内存地址:%p]",self];
    [tempString appendFormat:@"[指针地址:%p]",&self];
    [tempString appendString:@"["];
    
    unsigned int ivarsCount = 0;
    Ivar *ivars = class_copyIvarList([self class], &ivarsCount);
    for (int i = 0; i < ivarsCount; i++) {
        NSString *key = [NSString stringWithUTF8String:ivar_getName(ivars[i])];
        [tempString appendString:key];
        [tempString appendString:@":"];
        id objct = [self valueForKey:key];
        [tempString appendFormat:@"%@",objct];
        if (i != ivarsCount - 1) {
            [tempString appendString:@"|"];
        }
    }
    free(ivars);
    
    [tempString appendString:@"]"];
    return tempString.copy;
}

- (void)setValue:(id)value forUndefinedKey:(NSString *)key {
}

- (id)valueForUndefinedKey:(NSString *)key {
    return @"Undefined";
}
#endif

@end
