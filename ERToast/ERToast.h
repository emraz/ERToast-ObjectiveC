//
//  ERToast.h
//  PhotoBlend
//
//  Created by Mahmudul Hasan on 7/27/17.
//  Copyright © 2017 Mahmudul Hasan. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@interface ERToast : NSObject

+ (void)showToast:(NSString*)message atPoint:(CGPoint)point;
+ (void)showToast:(NSString*)message atPoint:(CGPoint)point delayTime:(float)delayTime;
+ (void)showToastAtCenter:(NSString*)message delayTime:(float)delayTime;

@end
