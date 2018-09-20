//
//  NSData+WTEscape_h.m
//  WTEscape
//
//  Created by WT on 2018/9/20.
//  Copyright © 2018年 王通. All rights reserved.
//

#import "NSData+WTEscape_h.h"

@implementation NSData (WTEscape_h)

#ifdef DEBUG
- (NSString *)description
{
    return [self descriptionWithLocale:nil indent:0];
}

- (NSString *)descriptionWithLocale:(id)locale indent:(NSUInteger)level
{
    NSMutableString *tempString = [NSMutableString string];
    
    NSError *error = nil;
    id result = [NSJSONSerialization JSONObjectWithData:self options:0 error:&error];
    if (error == nil
        && result != nil
        && ([result isKindOfClass:[NSArray class]]
            || [result isKindOfClass:[NSDictionary class]]
            || [result isKindOfClass:[NSSet class]])) {
        [tempString appendFormat:@"%@", [result descriptionWithLocale:locale indent:level]];
    } else {
        [tempString appendFormat:@"%@", self];
    }
    
    return tempString.copy;
}
#endif

@end
