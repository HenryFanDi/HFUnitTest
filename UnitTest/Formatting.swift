//
//  Formatting.swift
//  UnitTest
//
//  Created by HenryFan on 8/7/2016.
//  Copyright © 2016 HenryFanDi. All rights reserved.
//

import Foundation

extension Double {
  
  func toString() -> String {
    let asInt = Int(self)
    
    let hours = (asInt / 3600)
    let minutes = (asInt / 60) % 60
    let seconds = (asInt % 60)
    
    if hours > 0 {
      return String(format: "%02d:%02d:%02d", hours, minutes, seconds)
    } else {
      return String(format: "%02d:%02d", minutes, seconds)
    }
  }
  
}
