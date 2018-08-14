//
//  KKTestObjectTest2.m
//  KKCategories_Tests
//
//  Created by wanqijian on 2018/8/14.
//  Copyright © 2018年 wanqijian@icloud.com. All rights reserved.
//

#import <Specta/Specta.h>
#import <Expecta/Expecta.h>
#import "KKUser.h"

SpecBegin(KKUser)

describe(@"KKTestObject", ^{
    __block KKUser *user;
    
    beforeEach(^{
        user = [KKUser new];
        user.name = @"objectTest";
    });
    
    afterEach(^{
        user = nil;
    });
    
    it(@"name is objectTest", ^{
        expect(user.name).to.equal(@"objectTest");
    });
});


SpecEnd
