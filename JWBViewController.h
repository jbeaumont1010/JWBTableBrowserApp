//
//  JWBViewController.h
//  JWBTableBrowserApp
//
//  Created by Joseph Beaumont on 3/4/15.
//  Copyright (c) 2015 Joseph Beaumont. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "JWBDetailViewController.h"

@interface JWBViewController : UIViewController <UITableViewDataSource, UITableViewDelegate>

@property (nonatomic, strong) NSMutableArray *webSiteList;
//@property (nonatomic, weak) IBOutlet UITextField *urlField;
//@property (nonatomic, weak) IBOutlet UITextView *urlContent;
@property (nonatomic, strong) IBOutlet UITableView *tableView;


@end
