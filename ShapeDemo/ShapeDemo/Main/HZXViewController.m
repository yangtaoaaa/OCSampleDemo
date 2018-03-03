//
//  ViewController.m
//  ShapeDemo
//
//  Created by hezixuan on 2018/2/24.
//  Copyright © 2018年 hezixuan. All rights reserved.
//

#import "HZXViewController.h"
#import "HZXShapeConst.h"
#import "HZXCircle.h"
#import "HZXCar.h"
//#import "HZXEngine.h"
//#import "HZXTire.h"
#import "HZXSlant6.h"
#import "HZXAllWeatherRadial.h"

@interface HZXViewController ()

@end

@implementation HZXViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor whiteColor];
//    HZXCircle *circle = [[HZXCircle alloc] init];
//
//    [circle draw];
    
    // 初始化一辆新车，然后为其创建并配置了一个新发动机，创建并配置了4个新的轮胎
    HZXCar *car = [[HZXCar alloc] init];
    HZXEngine *engine = [[HZXEngine alloc]init];
    [car setEngine:engine];
    for (int i = 0; i < 4; i++) {
        HZXTire *tire = [[HZXTire alloc]init];
        [car setTires:tire atIndex:i];
    }
    [car print];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}


@end
