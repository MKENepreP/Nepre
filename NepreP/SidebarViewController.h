//
//  SidebarViewController.h
//  NepreP
//
//  Created by Lsr on 13-11-12.
//  Copyright (c) 2013年 Lsr. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface SidebarViewController : UIViewController <UITableViewDelegate, UITableViewDataSource>

// Public Properties:
@property (nonatomic, retain) IBOutlet UITableView *rearTableView;

// Public Methods:

@end
