//
//  TeamDetailViewController.m
//  NavigationControllers
//
//  Created by Ryan Cohen on 6/19/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

#import "TeamDetailViewController.h"

@interface TeamDetailViewController ()

@property (nonatomic, strong) IBOutlet UIImageView *imageView;
@property (nonatomic, strong) IBOutlet UILabel *nameLabel;
@property (nonatomic, strong) IBOutlet UILabel *phoneLabel;
@property (nonatomic, strong) IBOutlet UILabel *birthPlaceLabel;
@property (nonatomic, strong) IBOutlet UILabel *bandLabel;

@end

@implementation TeamDetailViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.imageView.image = self.teamMember.photo;
    self.nameLabel.text = self.teamMember.name;
    self.phoneLabel.text = self.teamMember.phoneNumber;
    self.birthPlaceLabel.text = [NSString stringWithFormat:@"%@, %@", self.teamMember.birthCity, self.teamMember.birthState];
    self.bandLabel.text = self.teamMember.favoriteBand;
    
    self.navigationItem.title = [NSString stringWithFormat:@"My man %@", self.teamMember.name];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
