//
//  ERToast.m
//  PhotoBlend
//
//  Created by Mahmudul Hasan on 7/27/17.
//  Copyright © 2017 Mahmudul Hasan. All rights reserved.
//

#import "ERToast.h"
#import "UIColor+Hexadecimal.h"

@implementation ERToast {
    
}

+ (void)showToast:(NSString*)message atPoint:(CGPoint)point {
    const CGFloat fontSize = 13;
    
    UILabel* label = [[UILabel alloc] initWithFrame:CGRectMake(0, 0, 120, 40)];
    label.backgroundColor = [[UIColor blackColor] colorWithAlphaComponent:0.85f];
    label.layer.cornerRadius = 3.0f;
    label.layer.borderColor = [UIColor whiteColor].CGColor;
    label.layer.borderWidth = 1.5f;
    label.clipsToBounds = YES;
    label.layer.masksToBounds = YES;
    label.font = [UIFont fontWithName:@"Helvetica-Bold" size:fontSize];
    label.text = message;
    label.textColor = [UIColor whiteColor];
    label.textAlignment = NSTextAlignmentCenter;
    //[label sizeToFit];
    
    label.center = point;
    
    //[self.view addSubview:label];
    [[UIApplication sharedApplication].keyWindow addSubview:label];
    
    [UIView animateWithDuration:0.5 delay:3 options:0 animations:^{
        label.alpha = 0;
    } completion:^(BOOL finished) {
        label.hidden = YES;
        [label removeFromSuperview];
    }];
}

+ (void)showToast:(NSString*)message atPoint:(CGPoint)point delayTime:(float)delayTime {
    
    const CGFloat fontSize = 13;
    
    UILabel* label = [[UILabel alloc] initWithFrame:CGRectMake(0, 0, 120, 40)];
    label.backgroundColor = [[UIColor blackColor] colorWithAlphaComponent:0.85f];
    label.layer.cornerRadius = 3.0f;
    label.layer.borderColor = [UIColor whiteColor].CGColor;
    label.layer.borderWidth = 1.5f;
    label.clipsToBounds = YES;
    label.layer.masksToBounds = YES;
    label.font = [UIFont fontWithName:@"Helvetica-Bold" size:fontSize];
    label.text = message;
    label.textColor = [UIColor whiteColor];
    label.textAlignment = NSTextAlignmentCenter;
    //[label sizeToFit];
    
    label.center = point;
    
    //[self.view addSubview:label];
    [[UIApplication sharedApplication].keyWindow addSubview:label];
    
    [UIView animateWithDuration:0.5 delay:delayTime options:0 animations:^{
        label.alpha = 0;
    } completion:^(BOOL finished) {
        label.hidden = YES;
        [label removeFromSuperview];
    }];

}
+ (void)showToastAtCenter:(NSString*)message delayTime:(float)delayTime {
    
    const CGFloat fontSize = 13;
    
    UILabel* label = [[UILabel alloc] initWithFrame:CGRectMake(0, 0, 120, 40)];
    label.backgroundColor = [[UIColor blackColor] colorWithAlphaComponent:0.85f];
    label.layer.cornerRadius = 3.0f;
    label.layer.borderColor = [UIColor whiteColor].CGColor;
    label.layer.borderWidth = 1.5f;
    label.clipsToBounds = YES;
    label.layer.masksToBounds = YES;
    label.font = [UIFont fontWithName:@"Helvetica-Bold" size:fontSize];
    label.text = message;
    label.textColor = [UIColor whiteColor];
    label.textAlignment = NSTextAlignmentCenter;
    //[label sizeToFit];
    
    label.center = CGPointMake([[UIScreen mainScreen] bounds].size.width/2.0, [[UIScreen mainScreen] bounds].size.height/2.0);
    
    //[self.view addSubview:label];
    [[UIApplication sharedApplication].keyWindow addSubview:label];
    
    [UIView animateWithDuration:0.5 delay:delayTime options:0 animations:^{
        label.alpha = 0;
    } completion:^(BOOL finished) {
        label.hidden = YES;
        [label removeFromSuperview];
    }];

}

@end
