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
        
        
    }
    return self;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.newsController = [TSCNewsController sharedController];

    [self.newsController getTopNewsStoriesWithCompletion:^(NSError *error, NSArray *stories) {
       
        if (error) {
            NSLog(@"Couldn't get stories:%@", error.localizedDescription);
            return;
        }
        
        self.stories = stories;
        [self.tableView reloadData];
        
    }];
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
