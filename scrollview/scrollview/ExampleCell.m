//
//  ExampleCell.m
//  scrollview
//
//  Created by 杨涛 on 2017/4/6.
//  Copyright © 2017年 杨涛. All rights reserved.
//

#import "ExampleCell.h"
#import "UIClickView.h"
#import "ExampleLayout.h"
@implementation ExampleCell
{
    UILabel *titleLabel;

}
-(void)setUpView{
    
    titleLabel =[UILabel new];
    
    [self.containerView addSubview:titleLabel];



}
-(void)getlayout:(ExampleLayout *)layout{
    
    titleLabel.frame=layout.titleFrame;
    titleLabel.text=layout.dataModel;


}

@end
