//

//  draw.m

//  graph

//

//  Created by miyamoto masaru on 2014/11/07.

//  Copyright (c) 2014年 com.miyamoto. All rights reserved.

//



#import "Liner.h"



@implementation Liner





- (id)initWithFrame:(CGRect)frame{
    
    self = [super initWithFrame:frame];
    
    if(self){
        
        self.frame = CGRectMake(50, 50, 500, 500);
        
        self.backgroundColor = UIColor.cyanColor;
        
    }
    
    return self;
    
}



// Only override drawRect: if you perform custom drawing.

// An empty implementation adversely affects performance during animation.

- (void)drawRect:(CGRect)rect {
    
    // Drawing code
    
    //x line
    
    
    
    
    
    [self drawGraph];
    
    
    
}



- (void) setPoint:(int)value :(int)choose{
    
    switch(choose){
            
        case 1:
            
            a = value;
            
            break;
            
            
            
        case 2:
            
            b = value;
            
            break;
            
        case 3:
            
            c = value;
            
            break;
            
            
            
        case 4:
            
            A = value;
            
            break;
        case 5:
            B = value;
            break;
        case 6:
            C = value;
            break;
        default:
            break;
    }
}

- (void) drawGraph{
    
    CGPoint start,end;
    
    //グラフの座標系での座標の設定
    start.x = -250;
    start.y = ((-1*a)*start.x+c*20)/b;
    
    end.x = 250;
    end.y = -1*((-1*a)*end.x+c*20)/b;
    
    //Viewに表示するために変換する
    start = CGPointMake((int)start.x +250 , (int)((-1)*(start.y -250)));
    end = CGPointMake((int)end.x +250, (int)(end.y + 250));
    
    //    NSLog(@"start(%f, %f)",start.x,start.y);
    //    NSLog(@"end(%f, %f)",end.x,end.y);
    
    //Viewに描く
    CGContextRef draw = UIGraphicsGetCurrentContext();
    CGContextMoveToPoint(draw, start.x, start.y);
    CGContextAddLineToPoint(draw, end.x, end.y);
    CGContextStrokePath(draw);
    
    
    
}







@end

