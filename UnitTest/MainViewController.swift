//
//  MainViewController.swift
//  UnitTest
//
//  Created by HenryFan on 3/7/2016.
//  Copyright © 2016 HenryFanDi. All rights reserved.
//

import UIKit

class MainViewController: UIViewController {
  
  // MARK: Lifecycle
  
  override func viewDidLoad() {
    super.viewDidLoad()
  }
  
  override func didReceiveMemoryWarning() {
    super.didReceiveMemoryWarning()
  }
  
  // MARK: Public
  
  func sum(a: Int, b: Int) -> Int {
    return a + b
  }
  
}
