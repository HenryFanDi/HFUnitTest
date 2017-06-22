//
//  APIHelper.swift
//  UnitTest
//
//  Created by HenryFan on 11/7/2016.
//  Copyright © 2016 HenryFanDi. All rights reserved.
//

import UIKit

class APIHelper: NSObject {
  
  // MARK: - Singleton Pattern
  
  static let sharedInstance = APIHelper()
  
  // MARK: - Public
  
  func addOrUpdateQueryStringParameter(_ url: String, key: String, value: String?) -> String {
    if var components = URLComponents.init(string: url) {
      var queryItems = components.queryItems ?? []
      for (index, item) in queryItems.enumerated() {
        print(item)
        if item.name.lowercased() == key.lowercased() {
          if let v = value { // Update
            queryItems[index] = URLQueryItem(name: key, value: v)
          } else { // Delete
            queryItems.remove(at: index)
          }
          components.queryItems = queryItems.count > 0 ? queryItems : nil
          return components.string!
        }
      }
      if let v = value { // Add
        queryItems.append(URLQueryItem(name: key, value: v))
        components.queryItems = queryItems
        return components.string!
      }
    }
    return url
  }
  
  func removeQueryStringParameter(_ url: String, key: String) -> String {
    return addOrUpdateQueryStringParameter(url, key: key, value: nil)
  }
  
}
