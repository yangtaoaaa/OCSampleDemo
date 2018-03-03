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

@interface HZXViewController ()

@end

@implementation HZXViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor whiteColor];
//    HZXCircle *circle = [[HZXCircle alloc] init];
//
//    [circle draw];
    
    // 让小汽车跑一会
    HZXCar *car = [[HZXCar alloc] init];
    [car print];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}


@end
