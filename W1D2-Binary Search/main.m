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
        
        
        NSString *target = @"1000000";
        int resultIndex = 0;
        
        //Linear Search
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
        
        
        
        //Binary Search
        NSMutableArray *nums2 = [[NSMutableArray alloc ] init];
        for (int i = 0; i <= 15; i++) {
            NSString *n = [[NSString alloc]initWithFormat:@"%d", i];
            [nums2 addObject:n];
        }

        
        int tar = 7;
        resultIndex = -1;
        int max = (int)[nums2 count];
        int min = 0;
        int mid = round(max / 2);
        
        do{
            int check = [nums2[mid] integerValue];
            if (check == tar) {
                resultIndex = mid;
                break;
            }
            else if (check > tar) {
                max = mid;
                mid = round((max + min) / 2);
            }
            else if (check < tar) {
                min = mid;
                mid = round((max + min) / 2);
            }
        }while (max > min);
        
        NSLog(@"-----------------");
        if (resultIndex == -1) {
            NSLog(@"Your target was not in this array!");
        }
        else {
            NSLog(@"Your target was found at index: %d", resultIndex);

        }
        
        
    }
    return 0;
}
