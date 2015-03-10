//
//  TSCNewsDetailViewController.m
//  BBC News
//
//  Created by Matthew Cheetham on 10/03/2015.
//  Copyright (c) 2015 3 SIDED CUBE DESIGN Ltd. All rights reserved.
//

#import "TSCNewsDetailViewController.h"
#import "TSCNewsStoryImageCellTableViewCell.h"

@implementation TSCNewsDetailViewController

- (instancetype)init
{
    self = [super initWithStyle:UITableViewStylePlain];
    if (self) {
        
        [self.tableView registerClass:[TSCNewsStoryImageCellTableViewCell class] forCellReuseIdentifier:@"ImageCellIdentifier"];
        
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
    TSCNewsStoryImageCellTableViewCell *imageCell = [tableView dequeueReusableCellWithIdentifier:@"ImageCellIdentifier" forIndexPath:indexPath];
    
    if (indexPath.section == 0) {
        
        if (indexPath.row == 0) {
            
            imageCell.imageView.image = [UIImage imageNamed:@"NewsStoryIconBarclays"];
            
        }
//        else if (indexPath.row == 1) {
//            
//            cell.textLabel.text = @" I am the adopted mother of a baby crow that had been injured. I affectionately call her Sheryl Crow. I interacted with her constantly, hand fed her, encouraged her recovery and in the process I fell in love with this beautiful and intelligent creature. Over the summer she grew and eventually she learned to fly. Sheryl brings me gifts. My first was presented to me with her wings splayed open and head bowed. I was very ceremoniously handed a yellow foam dart from a toy gun! She refused to take the dart back as she does when we play games. I felt truly honoured. She has continued to surprise me with gifts that she finds.";
//            
//        }
        
    }
    
    
    return imageCell;
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    if(indexPath.row == 0) {
        return 150;
    }
    
    return UITableViewAutomaticDimension;
}

@end
