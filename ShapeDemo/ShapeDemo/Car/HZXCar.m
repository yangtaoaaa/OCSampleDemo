//
//  HZXCar.m
//  ShapeDemo
//
//  Created by hezixuan on 2018/3/3.
//  Copyright © 2018年 hezixuan. All rights reserved.
//

#import "HZXCar.h"
#import "HZXEngine.h"
#import "HZXSlant6.h"
#import "HZXTire.h"
#import "HZXAllWeatherRadial.h"

@interface HZXCar()

@property (nonatomic, strong) HZXEngine *engine;
@property (nonatomic, strong) NSMutableArray *tireArr;

@end


@implementation HZXCar

- (id)init
{
    if (self = [super init]) {
        self.engine = [[HZXSlant6 alloc]init];
        for (int i = 0; i < 4; i++) {
            HZXTire *tire = [[HZXAllWeatherRadial alloc]init];
            [self.tireArr addObject:tire];
        }
    }
    return self;
}
- (void) print
{
    NSLog (@"%@", self.engine);
    NSLog (@"%@", self.tireArr);
    
}


- (NSMutableArray *)tireArr
{
    if (!_tireArr) {
        _tireArr = [[NSMutableArray alloc]init];
    }
    return _tireArr;
}


@end
