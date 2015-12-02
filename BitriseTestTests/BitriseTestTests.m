//
//  BitriseTestTests.m
//  BitriseTestTests
//
//  Created by Sanjay Balakrishnan on 02/12/15.
//  Copyright © 2015 Skedo. All rights reserved.
//

#import <XCTest/XCTest.h>
#import "ViewController.h"

@interface BitriseTestTests : XCTestCase
@property (nonatomic) ViewController *vcToTest;

@end

@implementation BitriseTestTests

- (void)setUp {
    [super setUp];
    self.vcToTest = [[ViewController alloc] init];

    // Put setup code here. This method is called before the invocation of each test method in the class.
}

- (void)tearDown {
    // Put teardown code here. This method is called after the invocation of each test method in the class.
    [super tearDown];
}

//- (void)testExample {
//    // This is an example of a functional test case.
//    // Use XCTAssert and related functions to verify your tests produce the correct results.
//}
//
//- (void)testPerformanceExample {
//    // This is an example of a performance test case.
//    [self measureBlock:^{
//        // Put the code you want to measure the time of here.
//    }];
//}
- (void)testReverseString
{
    NSString *originalString = @"himynameisandy";
    NSString *reversedString = [self.vcToTest reverseString:originalString];
    NSString *expectedReversedString = @"ydnasiemanymih";
    XCTAssertEqualObjects(expectedReversedString, reversedString, @"The reversed string did not match the expected reverse");
}
@end
