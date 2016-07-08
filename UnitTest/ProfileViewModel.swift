//
//  ProfileViewModel.swift
//  UnitTest
//
//  Created by HenryFan on 7/7/2016.
//  Copyright © 2016 HenryFanDi. All rights reserved.
//

import UIKit

class ProfileViewModel: NSObject {
  
  let profile: Profile
  
  // MARK: Initialize
  
  init(withProfile profile: Profile) {
    self.profile = profile
  }
  
  func timeForProfile() -> String {
    return profile.duration.toString()
  }
  
}
