//
//  TSCNewsDetailViewController.m
//  BBC News
//
//  Created by Matthew Cheetham on 10/03/2015.
//  Copyright (c) 2015 3 SIDED CUBE DESIGN Ltd. All rights reserved.
//

#import "TSCNewsDetailViewController.h"
#import "TSCNewsStoryImageCellTableViewCell.h"
#import "TSCNewsStory.h"

@interface TSCNewsDetailViewController ()

@property (nonatomic, strong) TSCNewsStory *story;

@end

@implementation TSCNewsDetailViewController

- (instancetype)initWithStory:(TSCNewsStory *)story
{
    self = [super initWithStyle:UITableViewStylePlain];
    if (self) {
        
        self.story = story;
        [self.tableView registerClass:[TSCNewsStoryImageCellTableViewCell class] forCellReuseIdentifier:@"ImageCellIdentifier"];
        [self.tableView registerClass:[UITableViewCell class] forCellReuseIdentifier:@"StoryCellIdentifier"];
        
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
    
    if (indexPath.section == 0) {
        
        if (indexPath.row == 0) {
            
            TSCNewsStoryImageCellTableViewCell *imageCell = [tableView dequeueReusableCellWithIdentifier:@"ImageCellIdentifier" forIndexPath:indexPath];
                        
            imageCell.imageView.image = [UIImage imageWithData:[NSData dataWithContentsOfURL:self.story.imageURL]];

            return imageCell;

        } else if (indexPath.row == 1) {
            
            UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"StoryCellIdentifier" forIndexPath:indexPath];

            cell.textLabel.text = self.story.body;
            cell.textLabel.numberOfLines = 0;
            cell.textLabel.lineBreakMode = NSLineBreakByWordWrapping;
            
            return cell;
            
        } else {
            
            UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"StoryCellIdentifier" forIndexPath:indexPath];

            cell.textLabel.text = nil;
            
            return cell;
            
        }
        
    }
    
    return nil;
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    if(indexPath.row == 0) {
        return 150;
        
    } else if (indexPath.row == 1) {
        
        CGSize constrainedSize = CGSizeMake([UIScreen mainScreen].bounds.size.width - 32, MAXFLOAT);
        CGRect bodyRect = [self.story.body boundingRectWithSize:constrainedSize options:NSStringDrawingUsesLineFragmentOrigin|NSStringDrawingUsesFontLeading attributes:@{NSFontAttributeName:[UIFont boldSystemFontOfSize:18]} context:nil];
        return bodyRect.size.height + 24;
    }
    
    return UITableViewAutomaticDimension;
}

@end
