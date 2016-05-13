//
//  BodyLanguageTests.m
//  BodyLanguageTests
//
//  Created by Matias Piipari on 13/05/2016.
//  Copyright © 2016 Matias Piipari & Co. All rights reserved.
//

#import <XCTest/XCTest.h>
#import <BodyLanguage/BodyLanguage.h>

@interface BodyLanguageTests : XCTestCase

@end

@implementation BodyLanguageTests

- (void)setUp {
    [super setUp];
    // Put setup code here. This method is called before the invocation of each test method in the class.
}

- (void)tearDown {
    // Put teardown code here. This method is called after the invocation of each test method in the class.
    [super tearDown];
}

- (void)testExample {
    MPClusterTree *tree = [[MPClusterTree alloc] init];
    
    NSURL *URL = [[NSBundle bundleForClass:self.class] URLForResource:@"ClusterTreeData" withExtension:@"csv"];
    XCTAssertNotNil(URL, @"Test resource is missing");
    
    BOOL trainingSuccessul = [tree trainWithContentsOfURL:URL error:nil];
    XCTAssertTrue(trainingSuccessul, @"Training successful.");
}

@end
