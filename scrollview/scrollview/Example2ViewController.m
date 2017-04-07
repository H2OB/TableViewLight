//
//  Example2ViewController.m
//  scrollview
//
//  Created by 杨涛 on 2017/4/6.
//  Copyright © 2017年 杨涛. All rights reserved.
//

#import "Example2ViewController.h"
#import "UIView+Add.h"
#import "UITableView+Protocol.h"
static NSString *cellIdentifier=@"UITableViewCell";

@interface Example2ViewController ()
@property(retain,nonatomic)UITableView *tableView;
@property(retain,nonatomic)NSMutableArray *dataArr;
@end

@implementation Example2ViewController

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
    
    
   
    //设置每行高度
    [_tableView setHeightForRow:^CGFloat(id data, NSIndexPath *indexPath) {
        
        return  44;
    }];
    
    //设置行
    [_tableView setCellForRow:^UITableViewCell *(UITableView *tableView, NSMutableArray * data, NSIndexPath *indexPath) {
        
        UITableViewCell *cell =[tableView dequeueReusableCellWithIdentifier:cellIdentifier];
        cell.textLabel.text =data[indexPath.row];
        return cell;
        
    }];
    
    [_tableView addSelectRowAction:^(UITableView *tableView, id data, NSIndexPath *indexPath, id action) {
        
        [tableView deselectRowAtIndexPath:indexPath animated:YES];
        
    }];
    
    
    
    
    
}
-(void)initData{
    
    _dataArr=@[].mutableCopy;
    
    [_dataArr addObject:@"1"];
    [_dataArr addObject:@"2"];
    [_dataArr addObject:@"3"];
    [_dataArr addObject:@"1"];
    [_dataArr addObject:@"2"];
    [_dataArr addObject:@"3"];
    
    [_dataArr addObject:@"1"];
    [_dataArr addObject:@"2"];
    [_dataArr addObject:@"3"];
    
    [_dataArr addObject:@"1"];
    [_dataArr addObject:@"2"];
    [_dataArr addObject:@"3"];
    
    
    
    
    _tableView.data=_dataArr;
    
    [_tableView reloadData];
    
    
}

@end
