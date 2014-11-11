//

//  quadratic.m

//  graph

//

//  Created by MasaruMiyamoto on 2014/11/11.

//  Copyright (c) 2014年 com.miyamoto. All rights reserved.

//



#import "Quadratic.h"



@implementation Quadratic





// Only override drawRect: if you perform custom drawing.

// An empty implementation adversely affects performance during animation.

- (void)drawRect:(CGRect)rect {
    
    // Drawing code
    
    
    
}





- (void)drawGraph{
    
    CGPoint point,pointPre;
    
    CGContextRef draw2 = UIGraphicsGetCurrentContext();
    
    
    
    // y = ax^2 + bx + c
    
    // y = a(x^2 + bx ) + c
    
    // y = a(x + b/2)^2 - b^2/4+c
    
    
    
    double a2,b2,c2;
    
    
    
    a2 = (double)A;
    
    b2 = (double)B/2;
    
    c2 = (-1*((double)B)*((double)B))/4 + C;
    
    
    
    pointPre.x = -250;
    
    pointPre.y = (((double)a2/20)*(pointPre.x - b2*20)*(pointPre.x - b2*20) + c2*20);
    
    
    
    
    
    for(int i=1; i<500;i++){
        
        
        
        point.x = -250 + i;
        
        point.y = (((double)a2/20)*(point.x - b2*20)*(point.x - b2*20) + c2*20);
        
        point = CGPointMake(point.x +250 , ((-1)*(point.y -250)));
        
        
        
        CGContextMoveToPoint(draw2, pointPre.x, pointPre.y);
        
        CGContextAddLineToPoint(draw2, point.x, point.y);
        
        CGContextStrokePath(draw2);
        
        
        
        pointPre = point;
        
    }
    
    
    
}



@end

