//
//  TeamViewController.m
//  NavigationControllers
//
//  Created by Michael Amundsen on 6/19/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

#import "TeamViewController.h"
#import "TeamMember.h"
#import "TeamDetailViewController.h"

@interface TeamViewController ()

@end

@implementation TeamViewController

- (void)viewDidLoad {
    [super viewDidLoad];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    TeamDetailViewController *detailedView = [segue destinationViewController];
    if ([segue.identifier isEqualToString:@"Al"]) {
        TeamMember *al = [[TeamMember alloc] init];
        al.name = @"Al";
        al.phoneNumber = @"5551212";
        al.birthCity = @"Detroit";
        al.birthState = @"Michigan";
        al.favoriteBand = @"The Beatles";
        al.photo = [UIImage imageNamed:@"al"];
        detailedView.teamMember = al;
    } else if ([segue.identifier isEqualToString:@"Chris"]) {
        TeamMember *chris = [[TeamMember alloc] init];
        chris.name = @"Chris";
        chris.phoneNumber = @"4568901";
        chris.birthCity = @"San Mateo";
        chris.birthState = @"California";
        chris.favoriteBand = @"The Storkes";
        chris.photo = [UIImage imageNamed:@"chris"];
        detailedView.teamMember = chris;
    } else if ([segue.identifier isEqualToString:@"Avi"]) {
        TeamMember *avi = [[TeamMember alloc] init];
        avi.name = @"Avi";
        avi.phoneNumber = @"123456";
        avi.birthCity = @"Brooklyn";
        avi.birthState = @"New York";
        avi.favoriteBand = @"Red Hot Chill Peppers";
        avi.photo = [UIImage imageNamed:@"avi"];
        detailedView.teamMember = avi;
    } else if ([segue.identifier isEqualToString:@"Joe"]) {
        TeamMember *joe = [[TeamMember alloc] init];
        joe.name = @"Joe";
        joe.phoneNumber = @"987654";
        joe.birthCity = @"Duluth";
        joe.birthState = @"Minnesota";q
        joe.favoriteBand = @"Blink 182";
        joe.photo = [UIImage imageNamed:@"joe"];
        detailedView.teamMember = joe;
    }
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
