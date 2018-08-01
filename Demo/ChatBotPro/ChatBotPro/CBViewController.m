//
//  CBViewController.m
//  ChatBotPro
//
//  Created by PULP on 01/08/18.
//  Copyright © 2018 PULP. All rights reserved.
//

#import "CBViewController.h"

@interface CBViewController ()

@property (strong, nonatomic) IBOutlet UIButton *buttonAction;
@end

@implementation CBViewController

- (IBAction)action:(id)sender {
 [self navigateToNext];
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
   
}

-(void)navigateToNext{
    // grab bundle using `Class` in pod source (`self`, in this case)
    NSBundle *bundle = [NSBundle bundleForClass:HomeViewController.classForCoder];
    NSURL *bundleURL = [[bundle resourceURL] URLByAppendingPathComponent:@"ChatBotPro.bundle"];
    NSBundle *resourceBundle = [NSBundle bundleWithURL:bundleURL];
    HomeViewController *home = [[UIStoryboard storyboardWithName:@"Main" bundle:resourceBundle] instantiateInitialViewController];
    [self.navigationController pushViewController:home animated:YES];
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
