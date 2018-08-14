//
//  KKTestObjectTest.m
//  KKCategories_Tests
//
//  Created by wanqijian on 2018/8/14.
//  Copyright © 2018年 wanqijian@icloud.com. All rights reserved.
//

#import <XCTest/XCTest.h>
#import "KKUser.h"

@interface KKTestObjectTest : XCTestCase

@property (nonatomic, strong) KKUser *user;

@end

@implementation KKTestObjectTest

- (void)setUp {
    [super setUp];
    // Put setup code here. This method is called before the invocation of each test method in the class.
    self.user = [KKUser new];
    self.user.name = @"testObject";
    self.user.nick = @"nickName";
}

- (void)tearDown {
    // Put teardown code here. This method is called after the invocation of each test method in the class.
    [super tearDown];
}

- (void)testExample1 {
    // This is an example of a functional test case.
    // Use XCTAssert and related functions to verify your tests produce the correct results.
    XCTAssertEqual(self.user.name, @"testObject");
}

- (void)testExample2 {
    // This is an example of a functional test case.
    // Use XCTAssert and related functions to verify your tests produce the correct results.
    XCTAssertEqual(self.user.nick, @"nickName");
}

- (void)testPerformanceExample {
    // This is an example of a performance test case.
    [self measureBlock:^{
        // Put the code you want to measure the time of here.
    }];
}

@end
