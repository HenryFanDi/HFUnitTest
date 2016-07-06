//
//  MainViewController.swift
//  UnitTest
//
//  Created by HenryFan on 3/7/2016.
//  Copyright © 2016 HenryFanDi. All rights reserved.
//

import UIKit

class MainViewController: UIViewController {
  
  @IBOutlet weak var num1TextField: UITextField!
  @IBOutlet weak var num2TextField: UITextField!
  
  @IBOutlet weak var sumLabel: UILabel!
  @IBOutlet weak var equalLabel: UILabel!
  
  @IBOutlet weak var resultLabel: UILabel!
  @IBOutlet weak var calculateBtn: UIButton!
  
  // MARK: Lifecycle
  
  override func viewDidLoad() {
    super.viewDidLoad()
    setupCalculateBtn()
  }
  
  override func didReceiveMemoryWarning() {
    super.didReceiveMemoryWarning()
  }
  
  // MARK: Private
  
  func setupCalculateBtn() {
    calculateBtn.layer.borderColor = UIColor.whiteColor().CGColor
    calculateBtn.layer.borderWidth = 1.0
    calculateBtn.layer.cornerRadius = 4.0
  }
  
  @IBAction func calculateBtnOnTap(sender: AnyObject) {
    if num1TextField.text != "" && num2TextField.text != "" {
      let s = sum(Int(num1TextField.text!)!, b: Int(num2TextField.text!)!)
      resultLabel.text = String(format: "%d", s)
    }
  }
  
  // MARK: Public
  
  func sum(a: Int, b: Int) -> Int {
    return a + b
  }
  
}
