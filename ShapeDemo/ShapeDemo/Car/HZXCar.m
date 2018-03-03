//
//  HZXCar.m
//  ShapeDemo
//
//  Created by hezixuan on 2018/3/3.
//  Copyright © 2018年 hezixuan. All rights reserved.
//

#import "HZXCar.h"

@interface HZXCar()


@end


@implementation HZXCar

- (id)init
{
    if (self = [super init]) {
        engine = [[HZXSlant6 alloc]init];
        for (int i = 0; i < 4; i++) {
            HZXTire *tire = [[HZXAllWeatherRadial alloc]init];
            [self.tireArr addObject:tire];
        }
    }
    return self;
}
- (void) print
{
    NSLog (@"%@", engine);
    NSLog (@"%@", self.tireArr);
    
}

- (HZXEngine *)engine
{
    return engine;
}

- (void)setEngine:(HZXEngine *)engine
{
    engine = engine;
}

- (HZXTire *)tireAtIndex:(int)index
{
    if (index < 0 || index > 3) {
        NSLog(@"bad index of %d in \"tireAtIndex:\"", index);
        return nil;
    }
    return tires[index];
}

- (void)setTires:(HZXTire *)tire atIndex:(int)index
{
    if (index < 0 || index > 3) {
        NSLog(@"bad index of %d in \"tireAtIndex:\"", index);
        return;
    }
    tires[index] = tire;
}

- (NSMutableArray *)tireArr
{
    if (!_tireArr) {
        _tireArr = [[NSMutableArray alloc]init];
    }
    return _tireArr;
}


@end
