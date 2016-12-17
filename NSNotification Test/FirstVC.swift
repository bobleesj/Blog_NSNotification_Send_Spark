//
//  FirstVC
//  NSNotification Test
//
//  Created by Bob Lee on 12/17/16.
//  Copyright © 2016 BobtheDeveloper. All rights reserved.
//

import UIKit
class FirstVC: UIViewController {

  @IBOutlet weak var FirstVCLabel: UILabel!
  override func viewDidLoad() {
    super.viewDidLoad()
    NotificationCenter.default.addObserver(self, selector: #selector(doSomethingAfterNotified), name: NSNotification.Name(rawValue: myNotificationKey), object: nil)
    
    
  }

  func doSomethingAfterNotified() {
    print("I've been notified")
    FirstVCLabel.text = "Damn, I feel your spark 😱"
    
  }    
}
