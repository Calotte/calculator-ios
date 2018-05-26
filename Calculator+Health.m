//
//  Calculator+Health.m
//  CalculatorIOS
//
//  Created by 石朝印 on 16/12/13.
//  Copyright © 2016年 shichy. All rights reserved.
//

#import "Calculator+Health.h"

@implementation Calculator (Health)

-(NSString*)computeHealth:(NSString *)height second:(NSString *)weight{
    NSMutableString* expr;
    expr=[NSMutableString stringWithString:weight];
    [expr appendString:@"/(("];
    [expr appendString:height];
    [expr appendString:@"/100.0)"];
    [expr appendString:@"*("];
    [expr appendString:height];
    [expr appendString:@"/100.0))"];
    self.disp=expr;
    return [NSString stringWithFormat:@"%.2f",[[self computedResult] floatValue]];
}


@end
