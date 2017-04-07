//
//  ViewController.m
//  scrollview
//
//  Created by 杨涛 on 2017/4/6.
//  Copyright © 2017年 杨涛. All rights reserved.
//

#import "ViewController.h"
#import "UIView+Add.h"
#import "UITableView+Protocol.h"



#import "Example1ViewController.h"
#import "Example2ViewController.h"
#import "Example3ViewController.h"



static NSString *cellIdentifier=@"UITableViewCell";


@interface ViewController ()
@property(retain,nonatomic)UITableView *tableView;
@property(retain,nonatomic)NSMutableArray *dataArr;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.automaticallyAdjustsScrollViewInsets=NO;
    self.title=@"委托协议分离和封装";
    [self setUpView];
    [self initData];
}
-(void)setUpView{
    
    _tableView =[[UITableView alloc]initWithFrame:CGRectMake(0, 0, self.view.width, self.view.height-64)];
    _tableView.tableFooterView=[UIView new];
    
    [self.view addSubview:_tableView];
    //注册cell
    [_tableView registerClass:cellIdentifier identifier:cellIdentifier];
    

    //设置行
   [_tableView setCellForRow:^UITableViewCell *(UITableView *tableView, NSMutableArray * data, NSIndexPath *indexPath) {
       
       UITableViewCell *cell =[tableView dequeueReusableCellWithIdentifier:cellIdentifier];
       cell.textLabel.text =data[indexPath.row];
       return cell;
       
   }];
    
    __weak typeof(UIViewController *) weakself =self;
    
    [_tableView addSelectRowAction:^(UITableView *tableView, id data, NSIndexPath *indexPath, id action) {
        
        [tableView deselectRowAtIndexPath:indexPath animated:YES];
        
        
       
        
        if(indexPath.row==0) [weakself.navigationController pushViewController:[Example1ViewController new] animated:YES] ;
        if(indexPath.row==1) [weakself.navigationController pushViewController:[Example2ViewController new] animated:YES] ;
        if(indexPath.row==2) [weakself.navigationController pushViewController:[Example3ViewController new] animated:YES] ;
        
    }];

    
}
-(void)initData{
    
    _dataArr=@[].mutableCopy;
    
    [_dataArr addObject:@"常规用法"];
    [_dataArr addObject:@"优化用法"];
    [_dataArr addObject:@"自定义用法"];
    
    
    
    _tableView.data=_dataArr;
    
    [_tableView reloadData];
    
    
}




@end
