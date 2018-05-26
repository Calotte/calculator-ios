//
//  HealthViewController.m
//  CalculatorIOS
//
//  Created by 石朝印 on 16/12/13.
//  Copyright © 2016年 shichy. All rights reserved.
//

#import "HealthViewController.h"
#import "Calculator+Health.h"

@interface HealthViewController ()
@property (weak, nonatomic) IBOutlet UITextField *TxHeight;
@property (weak, nonatomic) IBOutlet UITextField *TxWeight;

@property (weak, nonatomic) IBOutlet UILabel *advice;
@property (weak, nonatomic) IBOutlet UILabel *score;
@property (weak, nonatomic) IBOutlet UIButton *btnStart;

@property(strong,nonatomic) Calculator* cal;




@end

@implementation HealthViewController



-(BOOL)textFieldShouldReturn:(UITextField *)textField{
    if(textField==self.TxHeight||textField==self.TxWeight){
        [textField resignFirstResponder];
    }
    return YES;
}


-(void)viewWillAppear:(BOOL)animated{
    [self.btnStart.layer setMasksToBounds:YES];
    [self.btnStart.layer setCornerRadius:12];
    [self.btnStart.layer setBorderWidth:1];
}


-(Calculator*)cal{
    if(!_cal){
        _cal=[[Calculator alloc]init];
    }
    return _cal;
}


- (IBAction)computeScore:(UIButton *)sender {
    
    NSString* score=[self.cal computeHealth:self.TxHeight.text second:self.TxWeight.text];
    if([score floatValue]<19){
        self.advice.text=@"再瘦就成竹竿了:( 加强营养！";
    }
    else if([score floatValue]<25){
        self.advice.text=@"恭喜，你的体型完全正常 :)";
    }
    else if([score floatValue]<30){
        self.advice.text=@"略胖，不能胡吃海喝了:|";
    }
    else if([score floatValue]<39){
         self.advice.text=@"你需要减肥了:(";
    }
    else{
        self.advice.text=@"请不要把猪放在上面！";
    }
    self.score.text=score;
    
}











- (void)viewDidLoad {
    [super viewDidLoad];
     self.cal=[[Calculator alloc]init];    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
