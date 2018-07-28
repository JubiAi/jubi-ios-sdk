//
//  AppDelegate.h
//  ChatBot
//
//  Created by Ashish Kr Singh on 13/07/18.
//  Copyright © 2018 Ashish Kr Singh. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface AppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow *window;
@property(strong, nonatomic) UINavigationController *navigationController;
-(void)checkReachability;
@property (nonatomic, assign) BOOL                       isReachable;

@end

