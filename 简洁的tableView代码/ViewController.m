//
//  ViewController.m
//  简洁的tableView代码
//
//  Created by zhangchu on 15/12/17.
//  Copyright © 2015年 eyrh. All rights reserved.
//

#import "ViewController.h"
#import "TestTableViewController.h"
#import "TestViewController.h"

@interface ViewController () <TestTableViewControllerDelegate>
@property (nonatomic, weak) TestTableViewController *testController;
@property (nonatomic, weak) TestViewController *controller;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self testController];
}

- (TestTableViewController *)testController
{
    if(!_testController)
    {
        TestTableViewController *testController = [[TestTableViewController alloc] init];
        
        [self addChildViewController:testController];
        testController.tableView.frame = self.view.bounds;
        [self.view addSubview:testController.tableView];
        _testController = testController;
    }
    return _testController;
}

-(void)jumpToOtherView:(TestTableViewController *)controller
{
    TestViewController *tvc = [[TestViewController alloc] init];
    [self presentViewController:tvc animated:YES completion:nil];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
