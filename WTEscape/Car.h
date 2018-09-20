//
//  Car.h
//  WTArchive
//
//  Created by WT on 2018/9/19.
//  Copyright © 2018年 王通. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@interface Car : NSObject

@property (nonatomic, copy) NSString *brand;
@property (nonatomic, strong) UIColor *color;
@property (nonatomic, strong) UIImage *image;
@property (nonatomic, strong) Car *subCar;
@property (nonatomic, assign) CGRect rect;

+ (instancetype)initWithDictionary:(NSDictionary *)dictionary;

@end
