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

@interface ViewController ()
<
TestTableViewControllerDelegate
>

@property (nonatomic, weak) TestTableViewController *testController;
@property (nonatomic, weak) TestViewController *controller;

@end

@implementation ViewController

//说明：
//此Controller为被简化的Controller
//所有的跳转在中间层TestTableViewController中实现
//所有的业务事件在本Controller里做
#pragma mark - lifeCycle
- (void)viewDidLoad {
    [super viewDidLoad];
    [self testController];
}

#pragma mark - delegates
#pragma mark - TestTableViewControllerDelegate
-(void)jumpToOtherView:(TestTableViewController *)controller
{
    TestViewController *tvc = [[TestViewController alloc] init];
    [self presentViewController:tvc animated:YES completion:nil];
}


#pragma mark - getter/setter
- (TestTableViewController *)testController
{
    if(!_testController)
    {
        TestTableViewController *testController = [[TestTableViewController alloc] init];
        testController.delegate = self;
        [self addChildViewController:testController];
        testController.tableView.frame = self.view.bounds;
        [self.view addSubview:testController.tableView];
        _testController = testController;
    }
    return _testController;
}

@end
