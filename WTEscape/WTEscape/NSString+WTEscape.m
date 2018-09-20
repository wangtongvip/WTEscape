//
//  NSString+WTEscape.m
//  WTEscape
//
//  Created by WT on 2018/9/20.
//  Copyright © 2018年 王通. All rights reserved.
//

#import "NSString+WTEscape.h"

@implementation NSString (WTEscape)

#ifdef DEBUG
- (NSString *)descriptionWithLocale:(id)locale indent:(NSUInteger)level {
    return [NSString stringWithFormat:@"\"%@\"", self];
}
#endif

@end
