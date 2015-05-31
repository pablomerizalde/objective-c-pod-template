//
//  HelloWorldTests.m
//  HelloWorldTests
//
//  Created by Gergely Orosz on 31/05/2015.
//  Copyright (c) 2015 GergelyOrosz. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <XCTest/XCTest.h>
#import "HelloWorld.h"

@interface HelloWorldTests : XCTestCase

@end

@implementation HelloWorldTests

- (void)setUp {
    [super setUp];
}

- (void)tearDown {
    [super tearDown];
}

- (void)test_sayHello {
    HelloWorld* helloWorld = [HelloWorld new];
    
    XCTAssertEqualObjects([helloWorld sayHello], @"Hello, World!");
}

- (void)test_sayHelloWithName_validNamePassed {
    HelloWorld* helloWorld = [HelloWorld new];
    
    XCTAssertEqualObjects([helloWorld sayHelloWithName:@"Gergely Orosz"], @"Hello, Gergely Orosz!");
}

- (void)test_sayHelloWithName_emptyStringPassed {
    HelloWorld* helloWorld = [HelloWorld new];
    
    XCTAssertEqualObjects([helloWorld sayHelloWithName:@""], @"Hello, World!");
}

- (void)test_sayHelloWithName_nilPassed {
    HelloWorld* helloWorld = [HelloWorld new];
    
    XCTAssertEqualObjects([helloWorld sayHelloWithName:nil], @"Hello, World!");
}

@end
