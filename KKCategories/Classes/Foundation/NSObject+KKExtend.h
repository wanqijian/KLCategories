//
//  NSObject+KKExtend.h
//  Expecta
//
//  Created by wanqijian on 2018/8/14.
//

#import <Foundation/Foundation.h>

@interface NSObject (KKExtend)

#pragma mark - Object properties

- (NSDictionary *)kk_properties;

#pragma mark - Object Class Methods

+ (void)kk_printMethods;

@end
