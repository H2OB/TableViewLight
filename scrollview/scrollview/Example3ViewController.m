//
//  Example3ViewController.m
//  scrollview
//
//  Created by 杨涛 on 2017/4/6.
//  Copyright © 2017年 杨涛. All rights reserved.
//

#import "Example3ViewController.h"
#import "UIView+Add.h"
#import "UITableView+Protocol.h"
#import "ExampleLayout.h"

static  NSString *cellIdentifier=@"ExampleCell";


@interface Example3ViewController ()
@property(retain,nonatomic)UITableView *tableView;
@property(retain,nonatomic)NSMutableArray *dataArr;
@end

@implementation Example3ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.automaticallyAdjustsScrollViewInsets=NO;
    
    [self setUpView];
    [self initData];
}
-(void)setUpView{
    
    _tableView =[[UITableView alloc]initWithFrame:CGRectMake(0, 0, self.view.width, self.view.height-64)];
    _tableView.tableFooterView=[UIView new];
    
    [self.view addSubview:_tableView];
    //注册cell
    [_tableView registerClass:cellIdentifier identifier:cellIdentifier];
    
    _tableView.separatorStyle = UITableViewCellSeparatorStyleNone;
    
    
    [_tableView addSelectRowAction:^(UITableView *tableView, id data, NSIndexPath *indexPath, id action) {
        
        [tableView deselectRowAtIndexPath:indexPath animated:YES];
        
    }];
    
    
    
    
    
}
-(void)initData{
    
    _dataArr=@[].mutableCopy;
    
     [_dataArr addObject:[[ExampleLayout alloc] initWithModel:@"数据" identifier:cellIdentifier]];
     [_dataArr addObject:[[ExampleLayout alloc] initWithModel:@"数据" identifier:cellIdentifier]];
     [_dataArr addObject:[[ExampleLayout alloc] initWithModel:@"数据" identifier:cellIdentifier]];
     [_dataArr addObject:[[ExampleLayout alloc] initWithModel:@"数据" identifier:cellIdentifier]];
     [_dataArr addObject:[[ExampleLayout alloc] initWithModel:@"数据" identifier:cellIdentifier]];

    _tableView.data=_dataArr;
    
    [_tableView reloadData];
    
    
}


@end
