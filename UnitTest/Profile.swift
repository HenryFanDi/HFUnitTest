//
//  Profile.swift
//  UnitTest
//
//  Created by HenryFan on 7/7/2016.
//  Copyright © 2016 HenryFanDi. All rights reserved.
//

import UIKit

class Profile: NSObject {
  
  var name: String
  var duration: TimeInterval
  var married: Bool
  
  // MARK: Initialize
  
  override init() {
    self.name = "Profile"
    self.duration = 450.0
    self.married = true
  }
  
}
