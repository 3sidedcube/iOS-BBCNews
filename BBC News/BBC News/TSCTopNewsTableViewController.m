//
//  TSCTopNewsTableViewController.m
//  BBC News
//
//  Created by Matthew Cheetham on 03/03/2015.
//  Copyright (c) 2015 3 SIDED CUBE DESIGN Ltd. All rights reserved.
//

#import "TSCTopNewsTableViewController.h"
#import "TSCNewsStoryCell.h"
#import "TSCNewsDetailViewController.h"
#import "TSCNewsStory.h"
#import "TSCNewsController.h"

@interface TSCTopNewsTableViewController ()

@property (nonatomic, strong) NSArray *stories;
@property (nonatomic, strong) TSCNewsController *newsController;

@end

@implementation TSCTopNewsTableViewController

- (instancetype)init
{
    self = [super initWithStyle:UITableViewStylePlain];
    if (self) {
        
        self.title = @"Top News";
        [self.tableView registerClass:[TSCNewsStoryCell class] forCellReuseIdentifier:@"NewsCellIdentifier"];
        
        self.tabBarItem.image = [UIImage imageNamed:@"TopNewsTabBar"];
        
        self.newsController = [TSCNewsController sharedController];
        
        TSCNewsStory *barclaysStory = [[TSCNewsStory alloc] init];
        barclaysStory.headline = @"Barclays annual profits fall 21%";
        barclaysStory.body = @"Barclays has reported a sharp fall in profits as it sets aside more funds to cover potential fines for misconduct.";
        barclaysStory.image = [UIImage imageNamed:@"NewsStoryIconBarclays"];
        
        TSCNewsStory *footballStory = [[TSCNewsStory alloc] init];
        footballStory.headline = @"Football discrimination 'increases'";
        footballStory.body = @"Incidents of discrimination in English professional and grassroots football have increased according to the anti-discrimination body Kick It Out.";
        footballStory.image = [UIImage imageNamed:@"NewsStoryIconFootball"];
        
        TSCNewsStory *missingStory = [[TSCNewsStory alloc] init];
        missingStory.headline = @"Missing girl";
        missingStory.body = @"Two people have been arrested in connection with the disappearance of 16-year-old Rebecca Watts from Bristol.";
        missingStory.image = [UIImage imageNamed:@"NewsStoryIconBecky"];
        
        self.stories = @[barclaysStory, footballStory, missingStory];
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
    // Return the number of rows in the section
    
    return self.stories.count;
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    TSCNewsStoryCell *cell = [tableView dequeueReusableCellWithIdentifier:@"NewsCellIdentifier" forIndexPath:indexPath];
    
    TSCNewsStory *story = (TSCNewsStory *)self.stories[indexPath.row];
    
    cell.textLabel.text = story.headline;
    cell.detailTextLabel.text = story.body;
    cell.imageView.image = story.image;
        
    return cell;
}


- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    TSCNewsDetailViewController *newsDetail = [[TSCNewsDetailViewController alloc] initWithStory:self.stories[indexPath.row]];
    [self.navigationController pushViewController:newsDetail animated:YES];
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    return 80;
}
@end
