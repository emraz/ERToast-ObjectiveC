//
//  UIColor+Hexadecimal.h
//  PhotoBlend
//
//  Created by Mahmudul Hasan on 5/10/17.
//  Copyright © 2017 Mahmudul Hasan. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIColor(Hexadecimal)

+ (UIColor *)colorWithHexString:(NSString *)hexString;
#define UIColorFromRGB(rgbValue) [UIColor colorWithRed:((float)((rgbValue & 0xFF0000) >> 16))/255.0 green:((float)((rgbValue & 0xFF00) >> 8))/255.0 blue:((float)(rgbValue & 0xFF))/255.0 alpha:1.0]

@end
