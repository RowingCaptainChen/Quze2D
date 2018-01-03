//
//  LineView.m
//  Quze2D
//
//  Created by chenshuai on 16/9/7.
//  Copyright © 2016年 chenshuai. All rights reserved.
//

#import "LineView.h"

@implementation LineView

- (void)drawRect:(CGRect)rect{
    
    
    [self drawCurLine];
}

- (void)drawLine1{
    //    开启图形上下文
    CGContextRef ctx = UIGraphicsGetCurrentContext();
    //    描述路径
    
    //    创建路径
    CGMutablePathRef path = CGPathCreateMutable();
    
    //    设置起点
    CGPathMoveToPoint(path, NULL, 20, 20);
    //    添加一根线到起点
    CGPathAddLineToPoint(path, NULL, 200, 200);
    //   把路径添加到上下文
    CGContextAddPath(ctx, path);
    
    //    渲染上下文
    
    CGContextStrokePath(ctx);
    
}
- (void)drawLine2{
    
//    开启图形上下文
    CGContextRef ctx = UIGraphicsGetCurrentContext();
//    描述上下文
    CGContextMoveToPoint(ctx, 50, 50);
    CGContextAddLineToPoint(ctx, 200, 200);
//    渲染上下文
    
    CGContextStrokePath(ctx);
    
    
}
- (void)drawLine3{
    
    
    UIBezierPath *path = [UIBezierPath bezierPath];
    
    [path moveToPoint:CGPointMake(20, 20)];
    
    [path addLineToPoint:CGPointMake(200, 200)];
    
    [path stroke];
    
    
}

- (void)drawLine4{
    
    CGContextRef ctx = UIGraphicsGetCurrentContext();
    
    CGContextMoveToPoint(ctx, 100, 100);
    
    CGContextAddLineToPoint(ctx, 200, 200);
    
    
    CGContextMoveToPoint(ctx, 100, 100);
    
    CGContextAddLineToPoint(ctx, 100, 300);
    
    [[UIColor redColor] setStroke];
    
    
    CGContextSetLineWidth(ctx, 5);
    
    CGContextSetLineCap(ctx,kCGLineCapRound);
    
    CGContextSetLineJoin(ctx, kCGLineJoinBevel);
    
    
    CGContextStrokePath(ctx);
    
}
- (void)drawLine5{
    
    UIBezierPath *path = [UIBezierPath bezierPath];
    
    [path moveToPoint:CGPointMake(100, 100)];
    
    [path addLineToPoint:CGPointMake(200, 200)];
    
    [[UIColor redColor] set];
    
    path.lineWidth = 5;
    
    [path stroke];
    
    UIBezierPath *path1 = [UIBezierPath bezierPath];
    
    [path1 moveToPoint:CGPointMake(100, 100)];
    
    [path1 addLineToPoint:CGPointMake(50, 200)];
    
    [[UIColor greenColor] set];
    
    path1.lineWidth = 10;
    
    [path1 stroke];
    
}

- (void)drawCurLine{
    
    CGContextRef ctx = UIGraphicsGetCurrentContext();
    
    CGContextMoveToPoint(ctx, 100, 100);
    
    CGContextAddQuadCurveToPoint(ctx, 100, 40, 200, 200);
    
    CGContextStrokePath(ctx);
    
}
@end
