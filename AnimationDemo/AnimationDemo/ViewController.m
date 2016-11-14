//
//  ViewController.m
//  AnimationDemo
//
//  Created by shoule on 2016/11/11.
//  Copyright © 2016年 SaiDicaprio. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@property(nonatomic,strong)UIView *animationView;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    
    NSArray *titleArray=@[@"动画1",@"动画2",@"动画3",@"动画四"];
    for(NSInteger i=0;i<titleArray.count;i++){
        UIButton *btn=[UIButton new];
        btn.tag=i;
        float width=[UIScreen mainScreen].bounds.size.width/4-10;
        float x=[UIScreen mainScreen].bounds.size.width/4*i+5;
        btn.frame=CGRectMake(x, 64, width, 40);
        [btn setTitle:titleArray[i] forState:UIControlStateNormal];
        [btn setBackgroundColor:[UIColor orangeColor]];
        [btn addTarget:self action:@selector(btnClick:) forControlEvents:UIControlEventTouchUpInside];
        [self.view addSubview:btn];
    }
    
    self.animationView=[UIView new];
    self.animationView.frame=CGRectMake(100, 200, 100, 100);
    self.animationView.backgroundColor=[UIColor redColor];
    [self.view addSubview:self.animationView];
    
    
}

-(void)btnClick:(UIButton *)btn
{
    switch (btn.tag) {
        case 0:
            [self baseAnimation];
            break;
            
        default:
            break;
    }
}

//使用baseAnimation动画
-(void)baseAnimation
{
    CALayer *layer=self.animationView.layer;
    CGPoint endPosition=CGPointMake(layer.position.x, layer.position.y+200);
    
    CABasicAnimation *animation=[CABasicAnimation animationWithKeyPath:@"position"];
    animation.fromValue=[NSValue valueWithCGPoint:layer.position];
    animation.toValue=[NSValue valueWithCGPoint:endPosition];
    animation.timingFunction=[CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionEaseInEaseOut];
    layer.position=endPosition;
    animation.duration=1.0f;
    
    [layer addAnimation:animation forKey:@"position"];
}

//使用uiview
-(void)beginViewAnimation
{
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
