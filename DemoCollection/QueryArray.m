//
//  QueryArray.m
//  DemoCollection
//
//  Created by Cuong Trinh on 7/11/15.
//  Copyright (c) 2015 Cuong Trinh. All rights reserved.
//

#import "QueryArray.h"
#import "Player.h"

@interface QueryArray ()

@end

@implementation QueryArray

- (void)viewDidLoad {
    [super viewDidLoad];
    UIImage* photo = [UIImage imageNamed:@"logo.png"];
    NSArray* arr2 = @[@"ABC", @3.14, photo];
    if ([arr2 containsObject:photo]) {
        NSLog(@"It is true");
    }
    
//    NSLog(@"We found photo at %ld", [arr2 indexOfObject:photo]);
//    
//    //What's different between - (NSUInteger)indexOfObject:(ObjectType nonnull)anObject and - (NSUInteger)indexOfObjectIdenticalTo:(ObjectType nonnull)anObject
    Player* a = [[Player alloc] init:@"John Kim" and:@"01"];
    Player* b = [[Player alloc] init:@"Jack Ma" and:@"02"];
    Player* c = [[Player alloc] init:@"James Hall" and:@"03"];
    
    NSArray* arr3 = @[a, b, c];
   Player* x = [[Player alloc] init:@"Jack Ma" and:@"02"];
   NSLog(@"We found Jack Ma at %ld", [arr3 indexOfObject:x]);   //Find equal object

    if ([arr3 indexOfObjectIdenticalTo:x] == NSNotFound) {   //Find identical object
        NSLog(@"We cannot find Jack Ma");
    } else NSLog(@"We find Jack Ma");

    
    Player* temp = [arr3 firstObject];
    if (temp == arr3[0]) {
        NSLog(@"Same");
    }

    NSUInteger foundIndex = [arr3 indexOfObjectPassingTest:^BOOL(id obj, NSUInteger idx, BOOL *stop) {
        Player *player = (Player*) obj;
        if ([player.fullName isEqualToString:@"John Kim"]) {
            return true;
        } else {
            return false;
        }
    }];
    
    NSLog(@"Ket qua: Found %ld", foundIndex);
    
}

@end
