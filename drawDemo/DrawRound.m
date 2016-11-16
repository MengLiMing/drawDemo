//
//  WaveWaterView.m
//  WaveWaterProgress
//
//  Created by my on 2016/11/9.
//  Copyright © 2016年 my. All rights reserved.
//

#import "DrawRound.h"

@implementation DrawRound


- (instancetype)initWithFrame:(CGRect)frame {
    if (self = [super initWithFrame:frame]) {
        self.clipsToBounds = YES;
    }
    self.backgroundColor = [UIColor groupTableViewBackgroundColor];
    return self;
}



#pragma mark - drawRect
- (void)drawRect:(CGRect)rect {
//    [self drawRound];
    
//    [self drawImgae];
    
    [self drawLayer];
    

}

#pragma mark - draw heart
- (void)drawRound {
    //UIKit
//    UIBezierPath *round = [UIBezierPath bezierPathWithRoundedRect:self.bounds cornerRadius:self.bounds.size.width/2];
//    [[UIColor redColor] setStroke];
//    [round addClip];
//    [round stroke];
   
    
    //Core Graphics
    CGContextRef context = UIGraphicsGetCurrentContext();
    
//    CGMutablePathRef path = CGPathCreateMutable();
//    CGPathAddRoundedRect(path, nil, self.bounds, self.bounds.size.width/2, self.bounds.size.width/2);
//    CGPathCloseSubpath(path);
//    CGContextAddPath(context, path);
//    CGPathRelease(path);
    
    CGContextAddEllipseInRect(context, self.bounds);
    CGContextSetStrokeColorWithColor(context, [UIColor redColor].CGColor);
    CGContextSetLineWidth(context, 1);
    
//    CGContextClip(context);
    CGContextStrokePath(context);
    
}


- (void)drawImgae {
    
    
    UIGraphicsBeginImageContextWithOptions(self.bounds.size, NO, 0);

    //UIKit
//    UIBezierPath *path = [UIBezierPath bezierPathWithRoundedRect:self.bounds cornerRadius:self.bounds.size.width/2];
//    [[UIColor redColor] setStroke];
//    [path stroke];
    
    
    //Core Graphics
    CGContextRef ctx = UIGraphicsGetCurrentContext();
    CGContextAddEllipseInRect(ctx, self.bounds);
    CGContextSetStrokeColorWithColor(ctx, [UIColor redColor].CGColor);
    CGContextSetLineWidth(ctx, 1);
    CGContextStrokePath(ctx);
    
    
    UIImage *image = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    
    
    UIImageView *imageV = [[UIImageView alloc] initWithFrame:self.bounds];
    [imageV setImage:image];
    [self addSubview:imageV];
}


- (void)drawLayer {
    
    CAShapeLayer *layer = [CAShapeLayer layer];
    layer.strokeColor = [UIColor redColor].CGColor;
    layer.fillColor = [UIColor clearColor].CGColor;
    layer.lineWidth = 2;
    layer.lineCap = kCALineCapRound;
    [self.layer addSublayer:layer];
    
    //UIKit
//    UIBezierPath *path = [UIBezierPath bezierPathWithRoundedRect:self.bounds cornerRadius:self.bounds.size.width/2];
//    layer.path = path.CGPath;

    //Core Graphics
    CGMutablePathRef path = CGPathCreateMutable();
    CGPathAddRoundedRect(path, nil, self.bounds, self.bounds.size.width/2, self.bounds.size.height/2);
    CGPathCloseSubpath(path);
    layer.path = path;
    
    CGPathRelease(path);
    
    
}



@end
