//
//  TeamMember.m
//  NavigationControllers
//
//  Created by Ryan Cohen on 6/19/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

#import "TeamMember.h"

@implementation TeamMember

- (instancetype)initWithPhoto:(UIImage *)photo
                         name:(NSString *)name
                        phone:(NSString *)phone
                    birthCity:(NSString *)birthCity
                   birthState:(NSString *)birthState
                 favoriteBand:(NSString *)favoriteBand {
    
    self = [super init];
    
    if (self) {
        _photo = photo;
        _name = name;
        _phoneNumber = phone;
        _birthCity = birthCity;
        _birthState = birthState;
        _favoriteBand = favoriteBand;
    }
    
    return self;
}

@end
