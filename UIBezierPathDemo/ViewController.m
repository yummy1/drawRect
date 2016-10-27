//
//  ViewController.m
//  UIBezierPathDemo
//
//  Created by 毛毛 on 16/10/27.
//  Copyright © 2016年 锐拓. All rights reserved.
//

#import "ViewController.h"
#import "drawView.h"
@interface ViewController ()
@property(nonatomic, strong)drawView *drawView;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    _drawView = [[drawView alloc] initWithFrame:CGRectMake(20, 100, [UIScreen mainScreen].bounds.size.width-40, 300)];
//    _drawView.backgroundColor = [UIColor whiteColor];
    [self.view addSubview:_drawView];
    
}



@end
