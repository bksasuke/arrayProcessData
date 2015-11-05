//
//  CreateArray.m
//  DemoCollection
//
//  Created by Cuong Trinh on 7/10/15.
//  Copyright (c) 2015 Cuong Trinh. All rights reserved.
//

#import "CreateArray.h"
#include <stdlib.h>
@interface CreateArray ()

@end

@implementation CreateArray

- (void)viewDidLoad {
    self.view.backgroundColor = [UIColor grayColor];
    [super viewDidLoad];
   

    NSArray* arr4s = [NSArray arrayWithContentsOfFile: [[NSBundle mainBundle] pathForResource:@"data" ofType:@"plist"]];
    NSLog(@"CLB có tất cả %lu cầu thủ",(unsigned long)arr4s.count);
    
  //  NSLog(@"%@", arr4s); // In ra phan tu mang cach 1
    
    
    
   
    NSMutableArray* pickedNames = [NSMutableArray new]; // Tạo mảng phụ chứa các cầu thủ được chọn
    int remaining = 15;
    NSLog(@"Chọn ra %d cầu thủ cho trận đấu:",remaining);
    // thêm các cầu thủ vào mảng phụ
    if (arr4s.count >= remaining) {
        while (remaining > 0) {
            id arr4 = arr4s[arc4random_uniform(arr4s.count)];
            
            if (![pickedNames containsObject:arr4]) {
                [pickedNames addObject:arr4];
            
                remaining--;
            }
        }
    }
    for (NSDictionary* item in pickedNames ) { // In ra phan tu mang cach 2
        NSLog(@"so %lu %@ - số áo:%@ - vị trí:%@",(unsigned long)pickedNames.count, item[@"name"], item[@"number"], item[@"position"]);
    }
}



@end
