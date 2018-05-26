//
//  advancedCalculator.h
//  CalculatorIOS
//
//  Created by 石朝印 on 16/12/12.
//  Copyright © 2016年 shichy. All rights reserved.
//

#import "Calculator.h"
#import <math.h>

@interface advancedCalculator : Calculator
@property(strong,nonatomic) NSMutableString* screen;
-(NSString*)abs:(NSString*)content;
-(NSString*)sqrt:(NSString*)content;
-(NSString*)x_1:(NSString*)content;
-(NSString*)xp2:(NSString*)c;
-(NSString*)xp3:(NSString*)c;
-(NSString*)sin:(NSString*)c;
-(NSString*)cos:(NSString*)c;
-(NSString*)tan:(NSString*)c;
-(NSString*)asin:(NSString*)c;
-(NSString*)acos:(NSString*)c;
-(NSString*)atan:(NSString*)c;
-(NSString*)ln:(NSString*)c;
-(NSString*)sinh:(NSString*)c;
-(NSString*)cosh:(NSString*)c;
-(NSString*)tanh:(NSString*)c;
-(NSString*)log:(NSString*)c;
@end
