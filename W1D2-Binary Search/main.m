//
//  main.m
//  W1D2-Binary Search
//
//  Created by Taylor Benna on 2016-05-03.
//  Copyright © 2016 Taylor Benna. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        NSMutableArray *nums = [[NSMutableArray alloc ] init];
        for (int i = 0; i <= 1000000; i++) {
            NSString *n = [[NSString alloc]initWithFormat:@"%d", i];
            [nums addObject:n];
        }
        NSDate *methodStart = [NSDate date];
        
        //Search
        NSString *target = @"1000000";
        int resultIndex = 0;
        for (int i = 0; i <= 1000000; i++) {
            
            if ([nums[i] isEqualToString:target]) {
                resultIndex = i;
                break;
            }
            else if(i == 1000000) {
                resultIndex = -1;
            }
        }
        
        
        
        NSLog(@"Your target was found at index: %d", resultIndex);
        
        NSDate *methodFinish = [NSDate date];
        NSTimeInterval execution = [methodFinish timeIntervalSinceDate:methodStart];
        NSLog(@"Execution Time: %f", execution);
        
    }
    return 0;
}
