//
//  TestTableViewController.m
//  简洁的tableView代码
//
//  Created by zhangchu on 15/12/17.
//  Copyright © 2015年 eyrh. All rights reserved.
//

#import "TestTableViewController.h"
#import "MYTableViewCell.h"

@interface TestTableViewController ()

@end

@implementation TestTableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.tableView.backgroundColor = [UIColor redColor];
    [self.tableView registerClass:[UITableViewCell class] forCellReuseIdentifier:@"cell"];
}

#pragma mark - Table view data source

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return 10;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static CGFloat i = 1;
    MYTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"cell"];
    if(!cell)
    {
        cell = [[MYTableViewCell alloc] init];
    }
    cell.textLabel.text = @"123";
    cell.height = (i++) * 10;
    return cell;
}

-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    [self.delegate jumpToOtherView:self];
}

-(CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    MYTableViewCell *cell = [tableView cellForRowAtIndexPath:indexPath];
    return cell.height;
//    return 100;
}

@end
