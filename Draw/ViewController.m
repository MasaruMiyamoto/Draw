//
//  ViewController.m
//  graph
//
//  Created by miyamoto masaru on 2014/11/07.
//  Copyright (c) 2014年 com.miyamoto. All rights reserved.
//

#import "ViewController.h"
#import "CreatField.h"

@interface ViewController ()

@property (weak, nonatomic) IBOutlet UITextField *textX;
@property (weak, nonatomic) IBOutlet UITextField *textY;
@property (weak, nonatomic) IBOutlet UITextField *textE;

@property (weak, nonatomic) IBOutlet UITextField *textA;
@property (weak, nonatomic) IBOutlet UITextField *textB;
@property (weak, nonatomic) IBOutlet UITextField *textC;

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
    
    int x,y,e;
    double a,b,c;
    x = (int)[self.textX.text integerValue];
    y = (int)[self.textY.text integerValue];
    e = (int)[self.textE.text integerValue];
    
    a = (double)[self.textA.text doubleValue];
    b = (double)[self.textB.text doubleValue];
    c = (double)[self.textC.text doubleValue];

    [field setPoint:x :y :e :1];
    [field setPoint:a :b :c :2];
  
    [self.view addSubview:field];
    //    NSLog(@"%d",x);
    //    NSLog(@"%d",y);
    //    NSLog(@"%d",e);
}



@end
