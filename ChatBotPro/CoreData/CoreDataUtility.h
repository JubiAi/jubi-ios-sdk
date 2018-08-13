//
//  Utility.h
//  ChatBot
//
//  Created by PULP on 07/08/18.
//  Copyright © 2018 Ashish Kr Singh. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Messages+CoreDataProperties.h"
#import "MessageInfo.h"
#import <MagicalRecord/MagicalRecord.h>

NS_ASSUME_NONNULL_BEGIN

@interface Utility : NSObject

- (void)saveMessageToLocalDB:(MessageInfo *)msgInfo;

@end

NS_ASSUME_NONNULL_END
