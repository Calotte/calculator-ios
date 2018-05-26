//
//  ViewController.m
//  CalculatorIOS
//
//  Created by 石朝印 on 16/12/6.
//  Copyright © 2016年 shichy. All rights reserved.
//

#import "ViewController.h"
//#import "Calculator.h"
#import "advancedCalculator.h"
#import "SecondViewController.h"
@interface ViewController ()
@property (weak, nonatomic) IBOutlet UITextField *txdisp;
@property (weak, nonatomic) IBOutlet UIButton *bt1;
@property (weak, nonatomic) IBOutlet UIButton *bt2;
@property (weak, nonatomic) IBOutlet UIButton *bt3;
@property (weak, nonatomic) IBOutlet UIButton *bt4;
@property (weak, nonatomic) IBOutlet UIButton *bt5;
@property (weak, nonatomic) IBOutlet UIButton *bt6;
@property (weak, nonatomic) IBOutlet UIButton *bt7;
@property (weak, nonatomic) IBOutlet UIButton *bt8;
@property (weak, nonatomic) IBOutlet UIButton *bt9;
@property (weak, nonatomic) IBOutlet UIButton *bt0;
@property (weak, nonatomic) IBOutlet UIButton *dot;
@property (weak, nonatomic) IBOutlet UIButton *ce;
@property (weak, nonatomic) IBOutlet UIButton *del;
@property (weak, nonatomic) IBOutlet UIButton *add;
@property (weak, nonatomic) IBOutlet UIButton *sub;
@property (weak, nonatomic) IBOutlet UIButton *mul;
@property (weak, nonatomic) IBOutlet UIButton *div;

@property (strong,nonatomic) advancedCalculator* cal;
@end

@implementation ViewController

-(Calculator*)cal{
    if(!_cal){
        _cal=[[advancedCalculator alloc]init];
    }
    return _cal;
}


- (IBAction)inputNumber:(UIButton *)sender {
    
    NSMutableString* str=[NSMutableString stringWithString:self.txdisp.text];
    if([[[sender titleLabel]text] isEqualToString:@"×"]){
        [self.cal.disp appendString:@"*"];
    }else if([[[sender titleLabel]text] isEqualToString:@"÷"]){
        [self.cal.disp appendString:@"/"];
    }else{
        [self.cal.disp appendString:[[sender titleLabel]text]];
    }
    [str appendString:[[sender titleLabel]text]];
    self.cal.screen=str;
    if(str.length>9)
        self.txdisp.text=[str substringFromIndex:str.length-9];
    else
    self.txdisp.text=str;
}

- (IBAction)clearAll:(UIButton *)sender {
    self.txdisp.text=nil;
    [self.cal clearDisp];
}

-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender{
    if([segue.identifier isEqualToString:@"SecondScene"]){
        if([segue.destinationViewController isKindOfClass:[SecondViewController class]]){
            SecondViewController *svc=(SecondViewController*)segue.destinationViewController;
            svc.cal=self.cal;
        }
    }
}


- (IBAction)deleteNum:(UIButton *)sender {
    [self.cal delNumber];
    self.txdisp.text=self.cal.screen;
}

- (IBAction)getResult:(UIButton *)sender {
    
    self.txdisp.text=self.cal.computedResult;
    self.cal.screen=[NSMutableString stringWithString:self.txdisp.text];
    
}


-(void)viewWillAppear:(BOOL)animated{
    if(self.cal.screen.length>9)
        self.txdisp.text=[self.cal.screen substringFromIndex:self.cal.screen.length-9];
    else
    self.txdisp.text=self.cal.screen;
}


- (void)viewDidLoad {
    self.cal=[[advancedCalculator alloc]init];
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
