//
//  ShapeView.m
//  Quze2D
//
//  Created by chenshuai on 16/9/8.
//  Copyright © 2016年 chenshuai. All rights reserved.
//

#import "ShapeView.h"

@implementation ShapeView

- (void)drawRect:(CGRect)rect{
    
    UIBezierPath *path = [UIBezierPath bezierPathWithRoundedRect:CGRectMake(20, 20, 200, 100) cornerRadius:100];
    
    [path stroke];
}
@end
