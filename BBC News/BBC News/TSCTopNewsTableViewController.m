//
//  TSCTopNewsTableViewController.m
//  BBC News
//
//  Created by Matthew Cheetham on 03/03/2015.
//  Copyright (c) 2015 3 SIDED CUBE DESIGN Ltd. All rights reserved.
//

#import "TSCTopNewsTableViewController.h"
#import "TSCNewsStoryCell.h"

@interface TSCTopNewsTableViewController ()

@end

@implementation TSCTopNewsTableViewController

- (instancetype)init
{
    self = [super initWithStyle:UITableViewStylePlain];
    if (self) {
        
        [self.tableView registerClass:[TSCNewsStoryCell class] forCellReuseIdentifier:@"NewsCellIdentifier"];
        
    }
    return self;
}

- (void)viewDidLoad {
    [super viewDidLoad];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    // Return the number of sections.
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    // Return the number of rows in the section.
    return 2;
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    TSCNewsStoryCell *cell = [tableView dequeueReusableCellWithIdentifier:@"NewsCellIdentifier" forIndexPath:indexPath];
    
    cell.textLabel.text = @"Barclays annual profits fall 21%";
    cell.detailTextLabel.text = @"Barclays has reported a sharp fall in profits as it sets aside more funds to cover potential fines for misconduct.";
    
    cell.imageView.image = [UIImage imageNamed:@"NewsStoryIcon"];
    
    return cell;
}


@end
