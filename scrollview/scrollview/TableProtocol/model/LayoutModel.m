//
//  LayoutModel.m
//  TableView
//
//  Created by 杨涛 on 2017/3/17.
//  Copyright © 2017年 杨涛. All rights reserved.
//

#import "LayoutModel.h"

@implementation LayoutModel

-(id )initWithModel:(id)model identifier:(NSString *)identifier{
    
    self  =[super init];

    if (self) {
        
        self.dataModel=model;
        self.reuseIdentifier=identifier;
        
        [self celllayout];
    }
    return self;
}
-(void)celllayout{
    
    self.cellHeight=44;//系统默认44；
}

@end
