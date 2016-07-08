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
    let _ = vc.view
    let num1 = 5
    let num2 = 5
    let sum = vc.sum(num1, b: num2)
    
    vc.num1TextField.text = String(format: "%d", num1)
    vc.num2TextField.text = String(format: "%d", num2)
    vc.calculateBtnOnTap(vc.calculateBtn)
    
    XCTAssert(sum == 10)
    XCTAssert(vc.resultLabel.text == String(format: "%d", sum), "fail to get sum of result label.")
  }
  
  func testInitialize() {
    let profile = Profile()
    let profileViewModel = ProfileViewModel.init(withProfile: profile)
    
    XCTAssertNotNil(profileViewModel, "ProfileViewModel should not be nil.")
    XCTAssertTrue(profileViewModel.profile == profile, "ProfileViewModel's profile should be equal to profile.")
  }
  
  func testTimeForProfile() {
    let profile = Profile()
    profile.duration = 645.0
    
    let profileViewModel = ProfileViewModel.init(withProfile: profile)
    let timeForProfile = profileViewModel.timeForProfile()
    XCTAssertEqual(timeForProfile, "10:45", "The formatted time should be equal to 10:45.")
  }
  
  func testExample() {
  }
  
  func testPerformanceExample() {
    self.measureBlock {
    }
  }
  
}
