//
//  APIHelper.swift
//  UnitTest
//
//  Created by HenryFan on 11/7/2016.
//  Copyright © 2016 HenryFanDi. All rights reserved.
//

import UIKit

class APIHelper: NSObject {
  
  // MARK: Singleton Pattern
  
  class var shared: APIHelper {
    struct Static {
      static var instance: APIHelper?
      static var token: dispatch_once_t = 0
    }
    dispatch_once(&Static.token) {
      Static.instance = APIHelper()
    }
    return Static.instance!
  }

}
