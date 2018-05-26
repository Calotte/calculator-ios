//
//  advancedCalculator.m
//  CalculatorIOS
//
//  Created by 石朝印 on 16/12/12.
//  Copyright © 2016年 shichy. All rights reserved.
//

#import "advancedCalculator.h"

@implementation advancedCalculator

-(NSString*)abs:(NSString *)content{
    double d=[content doubleValue];
    double result=fabs(d);
    NSNumber* n=[[NSNumber alloc] initWithDouble:result];
    return [n stringValue];
}



-(NSString*)sqrt:(NSString *)content{
    double d=[content doubleValue];
    double result=sqrt(d);
    NSNumber* n=[[NSNumber alloc]initWithDouble:result];
    return [n stringValue];
}

-(NSString*)x_1:(NSString *)content{
    double d=[content doubleValue];
    d=1.0/d;
    NSNumber* n=[[NSNumber alloc]initWithDouble:d];
    return [n stringValue];
}

-(NSString*)xp2:(NSString *)c{
    double d=[c doubleValue];
    d=pow(d, 2);
    NSNumber* n=[[NSNumber alloc]initWithDouble:d];
    return [n stringValue];
}

-(NSString*)xp3:(NSString *)c{
    double d=[c doubleValue];
    d=pow(d, 3);
    NSNumber* n=[[NSNumber alloc]initWithDouble:d];
    return [n stringValue];
}

-(NSString*)sin:(NSString *)c{
    double d=[c doubleValue];
    d=sin(d);
    NSNumber* n=[[NSNumber alloc]initWithDouble:d];
    return [n stringValue];
}

-(NSString*)sinh:(NSString *)c{
    double d=[c doubleValue];
    d=sinh(d);
    NSNumber* n=[[NSNumber alloc]initWithDouble:d];
    return [n stringValue];
}


-(NSString*)cos:(NSString *)c{
    double d=[c doubleValue];
    d=cos(d);
    NSNumber* n=[[NSNumber alloc]initWithDouble:d];
    return [n stringValue];
}


-(NSString*)cosh:(NSString *)c{
    double d=[c doubleValue];
    d=cosh(d);
    NSNumber* n=[[NSNumber alloc]initWithDouble:d];
    return [n stringValue];
}



-(NSString*)tan:(NSString *)c{
    double d=[c doubleValue];
    d=tan(d);
    NSNumber* n=[[NSNumber alloc]initWithDouble:d];
    return [n stringValue];
}

-(NSString*)asin:(NSString *)c{
    double d=[c doubleValue];
    d=asin(d);
    NSNumber* n=[[NSNumber alloc]initWithDouble:d];
    return [n stringValue];
}


-(NSString*)acos:(NSString *)c{
    double d=[c doubleValue];
    d=acos(d);
    NSNumber* n=[[NSNumber alloc]initWithDouble:d];
    return [n stringValue];
}


-(NSString*)atan:(NSString *)c{
    double d=[c doubleValue];
    d=atan(d);
    NSNumber* n=[[NSNumber alloc]initWithDouble:d];
    return [n stringValue];
}


-(NSString*)tanh:(NSString *)c{
    double d=[c doubleValue];
    d=tanh(d);
    NSNumber* n=[[NSNumber alloc]initWithDouble:d];
    return [n stringValue];
}

-(NSString*)ln:(NSString *)c{
    double d=[c doubleValue];
    d=log(d)/log(2.71828);
    NSNumber* n=[[NSNumber alloc]initWithDouble:d];
    return [n stringValue];
}


-(NSString*)log:(NSString *)c{
    double d=[c doubleValue];
    d=log(d);
    NSNumber* n=[[NSNumber alloc]initWithDouble:d];
    return [n stringValue];
}


-(void)clearDisp{
    self.disp=nil;
    self.screen=nil;
}



-(void)delNumber{
    long len=self.disp.length-1;
    if(len>=0){
        [self.disp deleteCharactersInRange:NSMakeRange(len, 1)];
        [self.screen deleteCharactersInRange:NSMakeRange(len, 1)];
    }
}

@end
