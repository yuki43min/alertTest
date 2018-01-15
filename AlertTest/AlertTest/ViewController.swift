//
//  ViewController.swift
//  AlertTest
//
//  Created by Yuki.S on 2018/01/15.
//  Copyright © 2018年 Yuki.S. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

  override func viewDidLoad() {
    super.viewDidLoad()
    // Do any additional setup after loading the view, typically from a nib.
  }

  override func didReceiveMemoryWarning() {
    super.didReceiveMemoryWarning()
    // Dispose of any resources that can be recreated.
  }

  @IBAction func buttonOKOnlyTapped(_ sender: Any) {
    self.showOKAlert(title: "AlertTest", message: "Message")
  }
  
  @IBAction func buttonOKCancelTapped(_ sender: Any) {
    self.showOKCancelAlert(title: "AlertTest", message: "Message")
  }
  
  @IBAction func buttonOKCancelWithTextFieldTapped(_ sender: Any) {
    self.showOKCancelAlertWithInput(title: "AlertTest", message: "Message")
  }
}

extension ViewController {
  
  func showOKAlert(title: String, message: String) {
    
    let alert = UIAlertController(title: title, message: message, preferredStyle: UIAlertControllerStyle.alert)
    self.present(alert, animated: true, completion: nil)
  }
  
  
  func showOKCancelAlert(title: String, message: String) {
    
    let alert = UIAlertController(title: title, message: message, preferredStyle: UIAlertControllerStyle.alert)
    alert.addAction(UIAlertAction(title: "Cancel", style: UIAlertActionStyle.cancel, handler: nil))
    self.present(alert, animated: true, completion: nil)
  }
  
  func showOKCancelAlertWithInput(title: String, message: String) {
    
    let alert = UIAlertController(title: title, message: message, preferredStyle: UIAlertControllerStyle.alert)
    alert.addAction(UIAlertAction(title: "Cancel", style: UIAlertActionStyle.cancel, handler: nil))
    alert.addTextField(configurationHandler: nil)
    self.present(alert, animated: true, completion: nil)
  }
  
}

