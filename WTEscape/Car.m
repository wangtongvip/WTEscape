//
//  Car.m
//  WTArchive
//
//  Created by WT on 2018/9/19.
//  Copyright © 2018年 王通. All rights reserved.
//

#import "Car.h"

@implementation Car

+ (instancetype)initWithDictionary:(NSDictionary *)dictionary {
    Car *car = [self new];
    if (car) {
        [Car setValuesForKeysWithDictionary:dictionary];
    }
    return car;
}

- (void)setValue:(id)value forUndefinedKey:(NSString *)key {
}

@end
