//
//  Calculator.m
//  CalculatorIOS
//
//  Created by 石朝印 on 16/12/6.
//  Copyright © 2016年 shichy. All rights reserved.
//

#import "Calculator.h"

@implementation Calculator
-(NSString*)computedResult{
    @try{
        //NSExpression* expr=[NSExpression expressionWithFormat:_disp];
        //id value=[expr expressionValueWithObject:nil context:nil];
        NSPredicate * parsed = [NSPredicate predicateWithFormat:[NSString stringWithFormat:@"1.0 * %@ = 0", _disp]];
        NSExpression *expr = [(NSComparisonPredicate *)parsed leftExpression];
        id value=[expr expressionValueWithObject:nil context:nil];
        self.disp=[NSMutableString stringWithString:[value stringValue]];
        return [value stringValue];
    }
    @catch(NSException* exception){
        self.disp=nil;
        return @"error";
    }
}
-(NSMutableString*)disp{
    if(!_disp){
        _disp=[[NSMutableString alloc]init];
    }
    return _disp;
}
-(void)clearDisp{
    self.disp=nil;
}
-(void)delNumber{
    long len=self.disp.length-1;
    if(len>=0){
        [self.disp deleteCharactersInRange:NSMakeRange(len, 1)];
    }
}
@end
