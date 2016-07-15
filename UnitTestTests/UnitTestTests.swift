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
  
  // MARK: ViewController
  
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
  
  // MARK: Model
  
  func testInitialize() {
    let profile = Profile()
    let profileViewModel = ProfileViewModel.init(withProfile: profile)
    
    XCTAssertNotNil(profileViewModel, "ProfileViewModel should not be nil.")
    XCTAssertTrue(profileViewModel.profile == profile, "ProfileViewModel's profile should be equal to profile.")
  }
  
  func testProfile() {
    let profile = Profile()
    
    XCTAssert(profile.name == "Profile", "Profile name should be the same.")
    XCTAssertEqual(profile.married, true)
  }
  
  func testTimeForProfile() {
    let profile = Profile()
    profile.duration = 645.0
    
    let profileViewModel = ProfileViewModel.init(withProfile: profile)
    let timeForProfile = profileViewModel.timeForProfile()
    XCTAssertEqual(timeForProfile, "10:45", "The formatted time should be equal to 10:45.")
  }
  
  // MARK: API
  
  func testAddOrUpdateQueryStringParameter() {
    let url = "https://example.com?abc=123&lmn=tuv&xyz=987"
    
    let newValue = APIHelper.shared.addOrUpdateQueryStringParameter(url, key: "aBc", value: "5566")
    let expectedValue = "https://example.com?aBc=5566&lmn=tuv&xyz=987"
    XCTAssertEqual(newValue, expectedValue, "The string should be \(expectedValue)")
  }
  
  func testRemoveQueryStringParameter() {
    let url = "https://example.com?abc=123&lmn=tuv&xyz=987"
    
    let newValue = APIHelper.shared.removeQueryStringParameter(url, key: "xyz")
    let expectedValue = "https://example.com?abc=123&lmn=tuv"
    XCTAssertEqual(newValue, expectedValue, "The string should be \(expectedValue)")
  }
  
  func testAddOrUpdateQueryStringParameterForAdd() {
    let url = "https://example.com?abc=123&lmn=tuv&xyz=987"
    
    let newValue = APIHelper.shared.addOrUpdateQueryStringParameter(url, key: "def", value: "456")
    let expectedValue = "https://example.com?abc=123&lmn=tuv&xyz=987&def=456"
    
    XCTAssertEqual(newValue, expectedValue, "The string should be \(expectedValue)")
  }

  func testExample() {
  }
  
  func testPerformanceExample() {
    self.measureBlock {
    }
  }
  
}
