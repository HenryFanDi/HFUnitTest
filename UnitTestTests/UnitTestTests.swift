//
//  UnitTestTests.swift
//  UnitTestTests
//
//  Created by HenryFan on 2/7/2016.
//  Copyright © 2016 HenryFanDi. All rights reserved.
//

import XCTest
@testable import UnitTest

class UnitTestTests: XCTestCase {
  
  var vc: MainViewController!
  
  override func setUp() {
    super.setUp()
    vc = MainViewController()
  }
  
  override func tearDown() {
    super.tearDown()
  }
  
  func testUnitTest() {
    XCTAssert(true)
  }
  
  func testMainViewController() {
    let sum = vc.sum(5, b: 5)
    XCTAssert(sum == 10)
  }
  
  func testExample() {
  }
  
  func testPerformanceExample() {
    self.measureBlock {
    }
  }
  
}
