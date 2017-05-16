//
//  stick.m
//  thread
//
//  Created by iOS-School-1 on 13.05.17.
//  Copyright © 2017 user. All rights reserved.
//

#import "stick.h"


@implementation stick

-(void)take{
    [_lock lock];

}

-(void)put{
   [_lock unlock];
    
}


@end
