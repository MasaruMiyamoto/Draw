//
//  CreatField.m
//  Draw
//
//  Created by miyamoto masaru on 2014/11/11.
//  Copyright (c) 2014年 MasaruMiyamoto. All rights reserved.
//

#import "CreatField.h"

@implementation CreatField


// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
    
    // x軸
    CGContextRef x = UIGraphicsGetCurrentContext();
    CGContextMoveToPoint(x, 0, 250);
    CGContextAddLineToPoint(x, 500, 250);
    CGContextStrokePath(x);
    //メモリ
    for(int i=0; i<500; i=i+25){
        CGContextMoveToPoint(x, i, 245);
        CGContextAddLineToPoint(x, i, 255);
        CGContextStrokePath(x);
    }
    
    //y軸
    CGContextRef y = UIGraphicsGetCurrentContext();
    CGContextMoveToPoint(y, 250, 0);
    CGContextAddLineToPoint(y, 250, 500);
    CGContextStrokePath(y);
    //メモリ
    for(int i=0; i<500; i=i+25){
        CGContextMoveToPoint(y, 245, i);
        CGContextAddLineToPoint(y, 255, i);
        CGContextStrokePath(x);
    }
    
}


@end
