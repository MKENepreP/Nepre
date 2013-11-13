//
//  SidebarViewController.m
//  NepreP
//
//  Created by Lsr on 13-11-12.
//  Copyright (c) 2013年 Lsr. All rights reserved.
//

#import "SidebarViewController.h"
#import "FriendsViewController.h"
#import "FoodViewController.h"
#import "SpotViewController.h"
#import "TimelineViewController.h"
#import "SearchViewController.h"
#import "LikeViewController.h"

#import "RevealController.h"

@interface SidebarViewController ()

@end

@implementation SidebarViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
}

- (IBAction)seeFriends:(id)sender {
    
    
    RevealController *revealController = [self.parentViewController isKindOfClass:[RevealController class]] ? (RevealController *)self.parentViewController : nil;
    
    if(![revealController.frontViewController isKindOfClass:[FriendsViewController class]]){
        FriendsViewController *friendsViewController = [[FriendsViewController alloc]init];
        
        UINavigationController *navigationController = [[UINavigationController alloc] initWithRootViewController:friendsViewController];
        
        [revealController setFrontViewController:navigationController animated:NO];
    }
}

- (IBAction)goHome:(id)sender {
    
    RevealController *revealController = [self.parentViewController isKindOfClass:[RevealController class]] ? (RevealController *)self.parentViewController : nil;
    
    
    if(![revealController.frontViewController isKindOfClass:[FoodViewController class]]){
        FoodViewController *foodViewController = [[FoodViewController alloc]init];
        
        UINavigationController *navigationController = [[UINavigationController alloc] initWithRootViewController:foodViewController];
        
        [revealController setFrontViewController:navigationController animated:NO];
    }
}

- (IBAction)goLike:(id)sender {
    RevealController *revealController = [self.parentViewController isKindOfClass:[RevealController class]] ? (RevealController *)self.parentViewController : nil;
    
    
    if(![revealController.frontViewController isKindOfClass:[LikeViewController class]]){
        LikeViewController *likeViewController = [[LikeViewController alloc]init];
        
        UINavigationController *navigationController = [[UINavigationController alloc] initWithRootViewController:likeViewController];
        
        [revealController setFrontViewController:navigationController animated:NO];
    }
}

- (IBAction)goSearch:(id)sender {
    RevealController *revealController = [self.parentViewController isKindOfClass:[RevealController class]] ? (RevealController *)self.parentViewController : nil;
    
    
    if(![revealController.frontViewController isKindOfClass:[SearchViewController class]]){
        SearchViewController *searchViewController = [[SearchViewController alloc]init];
        
        UINavigationController *navigationController = [[UINavigationController alloc] initWithRootViewController:searchViewController];
        
        [revealController setFrontViewController:navigationController animated:NO];
    }
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
