//
//  drawView.m
//  UIBezierPathDemo
//
//  Created by 毛毛 on 16/10/27.
//  Copyright © 2016年 锐拓. All rights reserved.
//

#import "drawView.h"

static CGFloat lz_leftSpace = 100.0;
static CGFloat lz_rightSpace = 20.0;

@interface drawView()
@property(nonatomic, assign) BOOL currented;
@property(nonatomic, assign) BOOL hasUpLine;
@property(nonatomic, assign) BOOL hasDownLine;
@end
@implementation drawView

- (void)drawRect:(CGRect)rect {
    self.currented = NO;
    self.hasUpLine = YES;
    self.hasDownLine = YES;
    
    CGFloat height = self.bounds.size.height;
    CGFloat cicleWith = self.currented?30:15;
    //    CGFloat shadowWith = cicleWith/3.0;
    
    if (self.hasUpLine) {
        
        UIBezierPath *topBezier = [UIBezierPath bezierPath];
        [topBezier moveToPoint:CGPointMake(lz_leftSpace/2.0, 0)];
        [topBezier addLineToPoint:CGPointMake(lz_leftSpace/2.0, height/2.0 - cicleWith/2.0 - cicleWith/6.0)];
        
        topBezier.lineWidth = 1.0;
        UIColor *stroke = [UIColor colorWithRed:185 green:185 blue:185 alpha:1];
        [stroke set];
        [topBezier stroke];
    }
    
    if (self.currented) {
        
        UIBezierPath *cicle = [UIBezierPath bezierPathWithOvalInRect:CGRectMake(lz_leftSpace/2.0 - cicleWith/2.0, height/2.0 - cicleWith/2.0, cicleWith, cicleWith)];
        
        cicle.lineWidth = cicleWith/3.0;
        UIColor *cColor = [UIColor colorWithRed:240 green:41 blue:14 alpha:1];
        [cColor set];
        [cicle fill];
        
        UIColor *shadowColor = [UIColor colorWithRed:240 green:41 blue:14 alpha:0.5];;
        [shadowColor set];
        
        
        [cicle stroke];
    } else {
        
        UIBezierPath *cicle = [UIBezierPath bezierPathWithOvalInRect:CGRectMake(lz_leftSpace/2.0-cicleWith/2.0, height/2.0 - cicleWith/2.0, cicleWith, cicleWith)];
        
        UIColor *cColor = [UIColor colorWithRed:185 green:185 blue:185 alpha:1];
        [cColor set];
        [cicle fill];
        
        [cicle stroke];
    }
    
    if (self.hasDownLine) {
        
        UIBezierPath *downBezier = [UIBezierPath bezierPath];
        [downBezier moveToPoint:CGPointMake(lz_leftSpace/2.0, height/2.0 + cicleWith/2.0 + cicleWith/6.0)];
        [downBezier addLineToPoint:CGPointMake(lz_leftSpace/2.0, height)];
        
        downBezier.lineWidth = 1.0;
        UIColor *stroke = [UIColor colorWithRed:185 green:185 blue:185 alpha:1];
        [stroke set];
        [downBezier stroke];
    }

}


@end
