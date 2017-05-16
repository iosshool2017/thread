//
//  filosofer.h
//  thread
//
//  Created by iOS-School-1 on 13.05.17.
//  Copyright © 2017 user. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "stick.h"
@interface filosofer : NSThread
@property (nonatomic,strong) stick* lelftstick;
@property (nonatomic,strong) stick* rigthtstick;
@property (nonatomic,strong) NSString* filname;
//-(void)eat:(id)param;
-(void) main;


@end
