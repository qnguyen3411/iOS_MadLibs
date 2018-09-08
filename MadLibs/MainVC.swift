//
//  MainVC.swift
//  MadLibs
//
//  Created by Quang Nguyen on 9/7/18.
//  Copyright © 2018 Quang Nguyen. All rights reserved.
//

import UIKit

class MainVC: UIViewController {
  var sentence = ""
  
  @IBOutlet weak var sentenceLabel: UILabel!
  
  override func viewDidLoad() {
    super.viewDidLoad()
    print(children)
    // Do any additional setup after loading the view, typically from a nib.
    sentenceLabel.text = sentence
  }
  
  override func viewWillAppear(_ animated: Bool) {
    sentenceLabel.text = sentence

  }
    
  


}

