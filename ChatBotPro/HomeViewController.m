//
//  HomeViewController.m
//  ChatBot
//
//  Created by PULP on 24/07/18.
//  Copyright © 2018 Ashish Kr Singh. All rights reserved.
//

#import "HomeViewController.h"
#import "ViewController.h"

@interface HomeViewController ()

@end

@implementation HomeViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    _containerView.layer.masksToBounds = YES;
    _containerView.layer.borderColor = [UIColor lightGrayColor].CGColor;
    _containerView.layer.borderWidth = 1.0;
    _containerView.layer.cornerRadius = 5.0;
    
    _startBotBtn.layer.masksToBounds = YES;
    _startBotBtn.layer.cornerRadius = 30;
}

-(IBAction)crossBtnAction:(id)sender{
    _containerView.hidden = YES;
}

-(IBAction)startBotAction:(id)sender{
    NSBundle *resourceBundle = [Utility getBundleForChatBotPro:@"ViewController"];
    ViewController *VC = [[UIStoryboard storyboardWithName:@"Main" bundle:resourceBundle] instantiateInitialViewController];
    [self presentViewController:VC animated:YES completion:^{
      [[NSNotificationCenter defaultCenter] postNotificationName:@"initialCallNotification" object:nil];
    }];
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
