//
//  LikeViewController.m
//  NepreP
//
//  Created by Lsr on 13-11-13.
//  Copyright (c) 2013年 Lsr. All rights reserved.
//

#import "LikeViewController.h"

@interface LikeViewController ()

@end

@implementation LikeViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewWillAppear:(BOOL)animated
{
	[super viewWillAppear:animated];
    
    self.title = @"Like";
    
	
	if ([self.navigationController.parentViewController respondsToSelector:@selector(revealGesture:)] && [self.navigationController.parentViewController respondsToSelector:@selector(revealToggle:)])
	{
		// Check if we have a revealButton already.
		if (![self.navigationItem leftBarButtonItem])
		{
			// If not, allocate one and add it.
            UIImage *menuImage = [UIImage imageNamed:@"menuLine"];
            
			UIBarButtonItem *revealButton = [[UIBarButtonItem alloc]
                                             initWithImage:menuImage style:UIBarButtonItemStyleBordered target:self.navigationController.parentViewController action:@selector(revealToggle:)];
            
			
            self.navigationItem.leftBarButtonItem = revealButton;
		}
	}
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)toInterfaceOrientation
{
	return (toInterfaceOrientation != UIInterfaceOrientationPortraitUpsideDown);
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
