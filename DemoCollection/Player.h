//
//  Player.h
//  DemoCollection
//
//  Created by Cuong Trinh on 7/12/15.
//  Copyright (c) 2015 Cuong Trinh. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Player : NSObject
@property (nonatomic, strong) NSString *fullName;
@property (nonatomic, strong) NSString *playerID;

- (instancetype) init: (NSString*) fullName and: (NSString*) playerID;
- (void) sayYourName;
@end