//
//  ViewController.m
//  ERToast-ObjectiveC
//
//  Created by Mahmudul Hasan on 4/15/18.
//  Copyright © 2018 Mahmudul Hasan Razib. All rights reserved.
//

#import "ViewController.h"
#import "ERToast.h"

@interface ViewController ()

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

- (IBAction)showDefaultToast:(id)sender {
    [ERToast showToast:@"ERToast" atPoint:CGPointMake(CGRectGetWidth(self.view.frame)/2.5, 100)];
    
}

- (IBAction)showCenterToast:(id)sender {
    [ERToast showToastAtCenter:@"ERToast" delayTime:0.3];
}

- (IBAction)showCustomToast:(id)sender {
    [ERToast showToast:@"ERToast" atPoint:CGPointMake(CGRectGetWidth(self.view.frame)/3, 400) delayTime:0.3];
}



@end
