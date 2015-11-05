//
//  Player.m
//  DemoCollection
//
//  Created by Cuong Trinh on 7/12/15.
//  Copyright (c) 2015 Cuong Trinh. All rights reserved.
//

#import "Player.h"

@implementation Player

- (instancetype) init: (NSString*) fullName and: (NSString*) playerID {
    if (self = [super init]) {
        self.fullName = fullName;
        self.playerID = playerID;
    }
    return self;
}

- (BOOL) isEqual:(id)object {
    if ([object isMemberOfClass: [Player class]]) {
        Player* temp = (Player*) object;
        if ([self.fullName isEqual:temp.fullName] && [self.playerID isEqual:temp.playerID]) {
            return true;
        } else {
            return false;
        }
    } else {
        return false;
    }
}
- (void) sayYourName {
    NSLog(@"My name is %@", self.fullName);
}
@end