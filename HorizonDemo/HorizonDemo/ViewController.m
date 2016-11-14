//
//  ViewController.m
//  HorizonDemo
//
//  Created by shoule on 2016/11/9.
//  Copyright © 2016年 SaiDicaprio. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    UIButton *btn=[UIButton new];
    btn.frame=CGRectMake(0, 50, 200, 200);
    [btn setTitle:@"我是一个开发者" forState:UIControlStateNormal];
    [btn setBackgroundColor:[UIColor orangeColor]];
    [self.view addSubview:btn];
    
    NSLog(@"我想添加一个东西 可以实现吗");
    
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
