//
//  btView.m
//  CalculatorIOS
//
//  Created by 石朝印 on 16/12/7.
//  Copyright © 2016年 shichy. All rights reserved.
//

#import "btView.h"

@implementation btView
-(void)awakeFromNib{
    [super awakeFromNib];
    [self.layer setMasksToBounds:YES];
    [self.layer setCornerRadius:12];
    [self.layer setBorderWidth:1];
}

@end
