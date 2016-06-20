//
//  TeamMember.h
//  NavigationControllers
//
//  Created by Ryan Cohen on 6/19/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface TeamMember : NSObject

@property (nonatomic, strong) UIImage *photo;
@property (nonatomic, strong) NSString *name;
@property (nonatomic, strong) NSString *phoneNumber;
@property (nonatomic, strong) NSString *birthCity;
@property (nonatomic, strong) NSString *birthState;
@property (nonatomic, strong) NSString *favoriteBand;

- (instancetype)initWithPhoto:(UIImage *)photo
                         name:(NSString *)name
                        phone:(NSString *)phone
                    birthCity:(NSString *)birthCity
                   birthState:(NSString *)birthState
                 favoriteBand:(NSString *)favoriteBand;

@end
