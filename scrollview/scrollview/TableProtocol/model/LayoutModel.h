//
//  LayoutModel.h
//  TableView
//
//  Created by 杨涛 on 2017/3/17.
//  Copyright © 2017年 杨涛. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
/**
 布局模型类
 */
@interface LayoutModel : NSObject
@property(copy,nonatomic) NSString *reuseIdentifier;
@property(strong,nonatomic) id dataModel;
@property(assign,nonatomic) CGFloat cellHeight;

-(void)celllayout;
-(id )initWithModel:(id)model identifier:(NSString *)identifier;
@end
