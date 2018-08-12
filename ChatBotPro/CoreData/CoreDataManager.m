//
//  CoreDataManager.m
//  ChatBot
//
//  Created by PULP on 01/08/18.
//  Copyright © 2018 Ashish Kr Singh. All rights reserved.
//

#import "CoreDataManager.h"
#import "Header.h"

@interface CoreDataManager ()



@end
@implementation CoreDataManager
static CoreDataManager *coreDataManager;

+ (CoreDataManager *)sharedManager
{
    if (!coreDataManager) {
        static dispatch_once_t onceToken;
        dispatch_once(&onceToken, ^{
            coreDataManager = [[CoreDataManager alloc] init];
        });
        
    }
    
    return coreDataManager;
}

#pragma mark - setup

- (id)init
{
    self = [super init];
    
    if (self) {
    }
    
    return self;
}



@end
