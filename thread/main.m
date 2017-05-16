//
//  main.m
//  thread
//
//  Created by iOS-School-1 on 13.05.17.
//  Copyright © 2017 user. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "filosofer.h"
#import "stick.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        /*NSLog(@"Hello, World!");
        
        filosofer *fil=[[filosofer alloc] init]
        
        NSThread *thTime;
        thTime = [[NSThread alloc] initWithTarget:self selector:@selector(_th) object:nil];
        [thTime start];
        
        [NSThread detachNewThreadSelector:@selector(_th) toTarget:self withObject:nil];
        
        [NSThread detachNewThreadSelector:@selector(compute42) target:self object:nil];
        NSThread *thread=[[NSThread alloc] initWithTarget:self action:@selector(compute42) object:nil];
        [thread start];
*/
        //[NSThread detachNewThreadSelector:@selector(eat:) toTarget:[filosofer class] withObject:nil];
            NSLog(@"dhgvfghsdfhs");
        NSMutableArray *sticks= [[NSMutableArray alloc] init];
        for (int i=0;i<5;i++)
        {
            stick *astick =[stick new];
            [sticks addObject:astick];
        }
        
        
        
        NSMutableArray *fil=[[NSMutableArray alloc] init];
        for (int i=0;i<5;i++)
        {
            filosofer *afil =[filosofer new];
            afil.filname=[NSString stringWithFormat:@"%i",i];
            afil.rigthtstick=sticks[i];
            if (i<4)
            {
                afil.lelftstick=sticks[i+1];
            }
            else
                
            {
                afil.lelftstick=sticks[0];
            }
            
            [fil addObject:afil];
        }
        
        
        //sleep(1000);
        
        for (int i=0;i<5;i++)
        {
            [fil[i] start];
        }
        
                    NSLog(@"dhgvfghsdfhs22222222222");
        
        sleep(10000);
        
        
       // [NSThread detachNewThreadSelector:@selector(eat:) toTarget:[filosofer class] withObject:nil];
        
        
        /*
         //convenience
         [NSThread detachNewThreadSelector:@selector(compute42) target:self object:nil]
         NSThread* thread = [[NSThread alloc] initWithTarget:self action:@selector(compute42) object:nil];
         [thread start];
         //suspending thread
         NSThread* currentThread = [NSThread currentThread]; [currentThread sleepForTimeInterval:5];
         //obtaining main thread
         NSThread* mainThread = [NSThread mainThread];
         */
        
    }
    return 0;
}
