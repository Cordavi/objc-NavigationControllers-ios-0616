//
//  TeamDetailViewController.m
//  NavigationControllers
//
//  Created by Michael Amundsen on 6/19/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

#import "TeamDetailViewController.h"

@interface TeamDetailViewController ()
@property (weak, nonatomic) IBOutlet UIImageView *teamMemberImageView;
@property (weak, nonatomic) IBOutlet UILabel *teamMemberNameLabel;
@property (weak, nonatomic) IBOutlet UILabel *teamMemberPhoneNumber;
@property (weak, nonatomic) IBOutlet UILabel *teamMemberBirthLocationLabel;
@property (weak, nonatomic) IBOutlet UILabel *teamMemberFavoriteBandLabel;

@end

@implementation TeamDetailViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.teamMemberImageView.image = self.teamMember.photo;
    self.teamMemberNameLabel.text = self.teamMember.name;
    self.teamMemberPhoneNumber.text = self.teamMember.phoneNumber;
    self.teamMemberBirthLocationLabel.text = [NSString stringWithFormat:@"%@, %@", self.teamMember.birthCity, self.teamMember.birthState];
    self.teamMemberFavoriteBandLabel.text = self.teamMember.favoriteBand;
    
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
