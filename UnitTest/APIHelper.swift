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

  func addOrUpdateQueryStringParameter(url: String, key: String, value: String?) -> String {
    if let components = NSURLComponents.init(string: url), var queryItems: [NSURLQueryItem] = (components.queryItems ?? []) {
      for (index, item) in queryItems.enumerate() {
        print(item)
        if item.name.lowercaseString == key.lowercaseString {
          if let v = value { // Update
            queryItems[index] = NSURLQueryItem(name: key, value: v)
          } else { // Delete
            queryItems.removeAtIndex(index)
          }
          components.queryItems = queryItems.count > 0 ? queryItems : nil
          return components.string!
        }
      }
      if let v = value { // Add
        queryItems.append(NSURLQueryItem(name: key, value: v))
        components.queryItems = queryItems
        return components.string!
      }
    }
    return url
  }
  
  func removeQueryStringParameter(url: String, key: String) -> String {
    return addOrUpdateQueryStringParameter(url, key: key, value: nil)
  }
  
}
