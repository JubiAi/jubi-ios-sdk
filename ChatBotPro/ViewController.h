//
//  ViewController.h
//  ChatBot
//
//  Created by Ashish Kr Singh on 13/07/18.
//  Copyright © 2018 Ashish Kr Singh. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Utility.h"
#import "TGRImageViewController.h"
#import "TGRImageZoomAnimationController.h"
//#import "AppManager.h"
//#import <AWSS3/AWSS3.h>
//#import <AWSCore/AWSCore.h>

@interface ViewController : UIViewController<UIViewControllerTransitioningDelegate>
@property (strong, nonatomic) NSMutableArray *messageList;
@property(nonatomic,retain)UIPopoverPresentationController *dateTimePopover8;
//@property (copy, nonatomic) AWSS3TransferUtilityUploadCompletionHandlerBlock completionHandler;
//@property (copy, nonatomic) AWSS3TransferUtilityProgressBlock progressBlock;
@end

