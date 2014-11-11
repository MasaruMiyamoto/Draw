//
//  ViewController.m
//  graph
//
//  Created by miyamoto masaru on 2014/11/07.
//  Copyright (c) 2014年 com.miyamoto. All rights reserved.
//

#import "ViewController.h"
#import "CreatField.h"
#import "Liner.h"
#import "Quadratic.h"


@interface ViewController ()

@property (weak, nonatomic) IBOutlet UITextField *textX;
@property (weak, nonatomic) IBOutlet UITextField *textY;
@property (weak, nonatomic) IBOutlet UITextField *textE;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)button:(id)sender {
    CreatField *field = [[CreatField alloc] init];
    field.frame = CGRectMake(50, 50, 500, 500);
    field.backgroundColor = [UIColor cyanColor];
    [self.view addSubview:field];
    int x,y,e;
    x = (int)[self.textX.text integerValue];
    y = (int)[self.textY.text integerValue];
    e = (int)[self.textE.text integerValue];
    
    Liner *line = [[Liner alloc]init];
    [line setPoint:x :1];
    [line setPoint:y :2];
    [line setPoint:e :3];
    
    //    NSLog(@"%d",x);
    //    NSLog(@"%d",y);
    //    NSLog(@"%d",e);
}



@end
