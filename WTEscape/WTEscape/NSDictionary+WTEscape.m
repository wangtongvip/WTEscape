//
//  NSDictionary+WTEscape.m
//  WTEscape
//
//  Created by WT on 2018/9/19.
//  Copyright © 2018年 王通. All rights reserved.
//

#import "NSDictionary+WTEscape.h"

@implementation NSDictionary (WTEscape)

#ifdef DEBUG
- (NSString *)descriptionWithLocale:(id)locale indent:(NSUInteger)level {
    NSMutableString *tempString = [NSMutableString string];
    NSMutableString *tabString = [[NSMutableString alloc] initWithString:@"\t"];
    for (NSUInteger i = 0; i < level; i++) {
        [tabString appendString:@"\t"];
    }
    if (level == 0) {
        [tempString appendString:@"\n"];
    }
    [tempString appendString:@"{\r\n"];
    
    [self enumerateKeysAndObjectsUsingBlock:^(id  _Nonnull key, id  _Nonnull obj, BOOL * _Nonnull stop) {
        [tempString appendString:tabString];
        if ([obj isKindOfClass:[NSString class]]
            || [obj isKindOfClass:[NSArray class]]
            || [obj isKindOfClass:[NSDictionary class]]
            || [obj isKindOfClass:[NSSet class]]
            || [obj isKindOfClass:[NSData class]]) {
            [tempString appendFormat:@"%@ = %@", key, [obj descriptionWithLocale:locale indent:(level + 1)]];
        } else {
            [tempString appendFormat:@"%@ = %@", key, obj];
        }
        [tempString appendString:@",\r\n"];
    }];
    
    [tempString appendFormat:@"%@}",[tabString substringToIndex:(tabString.length - 1)]];
    return tempString.copy;
}
#endif

@end
