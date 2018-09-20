//
//  ViewController.m
//  WTEscape
//
//  Created by WT on 2018/9/19.
//  Copyright © 2018年 王通. All rights reserved.
//

#import "ViewController.h"
#import "Car.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
}

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    NSArray *array = @[@"你好", @"他好", @"大家好"];
    
    NSDictionary *dataDic = @{@"姓名" : @"张三",
                                 @"性别" : @"男",
                                 @"爱好" : @{@"游泳" : @"不会", @"篮球" : @"也不会", @"骑车" : @"马马虎虎"},
                                 @"朋友" : @[@"大亨", @"jobson", @"李磊"]
                                 };
    NSData *data = [NSJSONSerialization dataWithJSONObject:dataDic options:0 error:NULL];
    
    NSSet *set = [[NSSet alloc] initWithObjects:@"这是一个set", data, dataDic, array, nil];
    
    UIImage *image = [UIImage imageNamed:@"WTIMAGE.png"];
    
    Car *car = [[Car alloc] init];
    car.brand = @"Benze";
    car.color = [UIColor redColor];
    car.image = image;
    car.rect = CGRectMake(0, 0, 100, 100);
    
    NSDictionary *dictionary = @{@"姓名" : @"张三",
                                 @"性别" : @"男",
                                 @"爱好" : @{@"游泳" : @"不会", @"篮球" : @"也不会", @"骑车" : @"马马虎虎"},
                                 @"朋友" : @[@"大亨", @"jobson", @"李磊"],
                                 @"data" : data,
                                 @"set" : set,
                                 @"array" : array,
                                 @"image" : image,
                                 @"car" : car,
                                 };
    
    NSLog(@"%@",dictionary);
    
//    NSLog(@"%@",data);
    
//    NSLog(@"%@",set);
    
//    NSLog(@"%@", @[dictionary, set, data, array]);
    
//    NSLog(@"%@",car);
    
}

@end
