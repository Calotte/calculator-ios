//
//  Calculator.h
//  CalculatorIOS
//
//  Created by 石朝印 on 16/12/6.
//  Copyright © 2016年 shichy. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Calculator : NSObject
@property(strong,nonatomic) NSMutableString* disp;
-(void)delNumber;
-(NSString*)computedResult;
-(void)clearDisp;
@end
