//
//  LearnArray.m
//  FootBallPlayer
//
//  Created by tuan.suke on 11/4/15.
//  Copyright © 2015 Cuong Trinh. All rights reserved.
//

#import "LearnArray.h"

@interface LearnArray ()

@end

@implementation LearnArray

- (void)viewDidLoad {
    [super viewDidLoad];
    
 //Shorting an Array
    NSArray *germanMakes = @[@"Mercedes-Benz", @"BMW", @"Porsche",
                             @"Opel", @"Volkswagen", @"Audi"];
    NSArray *sortedMakes = [germanMakes sortedArrayUsingComparator:
                            ^NSComparisonResult(id obj1, id obj2) {
                                if ([obj1 length] < [obj2 length]) {
                                    return NSOrderedAscending;
                                } else if ([obj1 length] > [obj2 length]) {
                                    return NSOrderedDescending;
                                } else {
                                    return NSOrderedSame;
                                }
                            }];
    NSLog(@"%@", sortedMakes);
    
//Filtering an array
//    NSArray *germanMakes = @[@"Mercedes-Benz", @"BMW", @"Porsche",
//                             @"Opel", @"Volkswagen", @"Audi"];
//    
//    NSPredicate *beforeL = [NSPredicate predicateWithBlock:
//                            ^BOOL(id evaluatedObject, NSDictionary *bindings) {
    
    // NSLog(@"phan tu so %ld , co gia tri %@", idx, obj); // cach truy cap mang
//                                NSComparisonResult result = [@"L" compare:evaluatedObject];
//                                if (result == NSOrderedDescending) {
//                                    return YES;
//                                } else {
//                                    return NO;
//                                }
//                            }];
//    NSArray *makesBeforeL = [germanMakes
//                             filteredArrayUsingPredicate:beforeL];
//    NSLog(@"%@", makesBeforeL);    // BMW, Audi
    
    
//Join string to only element
    NSArray *ukMakes = @[@"Aston Martin", @"Lotus", @"Jaguar", @"Bentley"];
    NSLog(@"%@", [ukMakes componentsJoinedByString:@", "]);
    
    
}

@end
