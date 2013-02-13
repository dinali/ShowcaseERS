//
//  RecentPubsViewController.h
//  ShowcaseERS
//
//  Created by Dina Li on 2/13/13.
//  Copyright (c) 2013 USDA ERS. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface RecentPubsViewController : UITableViewController 

{
    IBOutlet UITableView *myTableView;
    NSArray *tableData;
}
@property(nonatomic,retain) IBOutlet UITableView *myTableView;

@end
