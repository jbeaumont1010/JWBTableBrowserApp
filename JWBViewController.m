//
//  JWBViewController.m
//  JWBTableBrowserApp
//
//  Created by Joseph Beaumont on 3/4/15.
//  Copyright (c) 2015 Joseph Beaumont. All rights reserved.
//

#import "JWBViewController.h"

@interface JWBViewController ()

@end

@implementation JWBViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    

    UITableViewController * tableviewcontroller = [[UITableViewController alloc] initWithStyle:UITableViewStylePlain];
    tableviewcontroller.tableView = self.tableView;
    _webSiteList = [NSMutableArray arrayWithCapacity:5];
    [_webSiteList addObjectsFromArray:@[@"http://www.google.com",@"http://www.reddit.com",@"http://www.microsoft.com",@"http://www.twitch.tv/lordarcus",@"http://www.yahoo.com"]];
    

}


/*
- (NSString *)tableView:(UITableView *)tableView titleForHeaderInSection:(NSInteger)section {
    
    return @"URLS";
}
*/


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{

    static NSString * urlCellID = @"urlCell";
    
    
    UITableViewCell *urlCell = [tableView dequeueReusableCellWithIdentifier:urlCellID];
    
    if (urlCell == nil) {
        urlCell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:urlCellID];
    }
    
    urlCell.textLabel.text = [_webSiteList objectAtIndex:indexPath.row];
    
    return urlCell;
    
}


- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    
    if ([[segue identifier] isEqualToString:@"showURL"]) {
        NSInteger row = [[self tableView].indexPathForSelectedRow row];
        
        NSString * url = [_webSiteList objectAtIndex:row];
        
        
        JWBDetailViewController * detailViewController = [segue destinationViewController];
        detailViewController.urlItem = url;
    }
    
    
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return _webSiteList.count;
}

@end
