//
//  TeamViewController.m
//  NavigationControllers
//
//  Created by Ryan Cohen on 6/19/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

#import "TeamViewController.h"
#import "TeamMember.h"
#import "TeamDetailViewController.h"

@interface TeamViewController ()

@property (nonatomic, strong) NSArray *team;

@end

@implementation TeamViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    TeamMember *al = [[TeamMember alloc] initWithPhoto:[UIImage imageNamed:@"al"]
                                                  name:@"Al"
                                                 phone:@"5551212"
                                             birthCity:@"Detroit"
                                            birthState:@"Michigan"
                                          favoriteBand:@"The Beatles"];
    
    TeamMember *joe = [[TeamMember alloc] initWithPhoto:[UIImage imageNamed:@"joe"]
                                                  name:@"Joe"
                                                 phone:@"5551212"
                                             birthCity:@"Albany"
                                            birthState:@"New York"
                                          favoriteBand:@"The Who"];
    
    TeamMember *chris = [[TeamMember alloc] initWithPhoto:[UIImage imageNamed:@"chris"]
                                                  name:@"Chris"
                                                 phone:@"5551212"
                                             birthCity:@"Detroit"
                                            birthState:@"Michigan"
                                          favoriteBand:@"Grateful Dead"];
    
    TeamMember *avi = [[TeamMember alloc] initWithPhoto:[UIImage imageNamed:@"avi"]
                                                  name:@"Avi"
                                                 phone:@"5551212"
                                             birthCity:@"New York"
                                            birthState:@"New York"
                                          favoriteBand:@"Nickelback"];
    
    self.team = @[ al, joe, chris, avi ];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}

#pragma mark - Navigation

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    TeamDetailViewController *detail = (TeamDetailViewController *)[segue destinationViewController];
    TeamMember *teamMember = nil;
    
    if ([segue.identifier isEqualToString:@"Al"]) {
        teamMember = self.team[0];
        
    } else if ([segue.identifier isEqualToString:@"Joe"]) {
        teamMember = self.team[1];
        
    } else if ([segue.identifier isEqualToString:@"Chris"]) {
        teamMember = self.team[2];
        
    } else {
        teamMember = self.team[3];
    }
    
    detail.teamMember = teamMember;
}

@end
