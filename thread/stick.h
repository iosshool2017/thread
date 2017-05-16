//
//  stick.h
//  thread
//
//  Created by iOS-School-1 on 13.05.17.
//  Copyright © 2017 user. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface stick : NSObject
@property (nonatomic,strong) NSLock *lock;
-(void)take;
-(void)put;


@end
