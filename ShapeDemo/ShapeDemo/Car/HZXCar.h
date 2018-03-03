//
//  HZXCar.h
//  ShapeDemo
//
//  Created by hezixuan on 2018/3/3.
//  Copyright © 2018年 hezixuan. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "HZXEngine.h"
#import "HZXSlant6.h"
#import "HZXTire.h"
#import "HZXAllWeatherRadial.h"

@interface HZXCar : NSObject
{
    HZXEngine *engine;
    HZXTire *tires[4];
}

@property (nonatomic, strong) NSMutableArray *tireArr;

// 重写发动机get,set方法
- (HZXEngine *)engine;
- (void)setEngine:(HZXEngine *)engine;

// 重写轮胎get,set方法
- (HZXTire *)tireAtIndex:(int)index;
- (void)setTires:(HZXTire *)tire atIndex:(int)index;

- (void) print;

@end
