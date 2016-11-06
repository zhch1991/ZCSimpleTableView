//
//  TestTableViewController.h
//  简洁的tableView代码
//
//  Created by zhangchu on 15/12/17.
//  Copyright © 2015年 eyrh. All rights reserved.
//

#import <UIKit/UIKit.h>

@class TestTableViewController;

@protocol TestTableViewControllerDelegate <NSObject>

-(void)jumpToOtherView:(TestTableViewController *)controller;

@end

@interface TestTableViewController : UITableViewController
@property (nonatomic, weak) id<TestTableViewControllerDelegate> delegate;
@end
