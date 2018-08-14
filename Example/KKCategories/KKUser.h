//
//  KKTestObject.h
//  KKCategories_Example
//
//  Created by wanqijian on 2018/8/14.
//  Copyright © 2018年 wanqijian@icloud.com. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface KKUser : NSObject

@property (nonatomic, strong) NSString *name;
@property (nonatomic, strong) NSString *nick;

- (NSString *)getName;

@end
