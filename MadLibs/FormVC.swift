//
//  FormVC.swift
//  MadLibs
//
//  Created by Quang Nguyen on 9/7/18.
//  Copyright © 2018 Quang Nguyen. All rights reserved.
//

import UIKit

class FormVC: UIViewController {
  
  @IBOutlet weak var adjTextField: UITextField!
  
  @IBOutlet weak var verb1TextField: UITextField!
  
  @IBOutlet weak var verb2TextField: UITextField!
  
  @IBOutlet weak var nounTextField: UITextField!
  
  var sentence = ""
  
  @IBAction func submitPressed(_ sender: UIButton) {
    
    guard let adj = adjTextField.text else { return }
    guard let verb1 = verb1TextField.text else { return }
    guard let verb2 = verb2TextField.text else { return }
    guard let noun = nounTextField.text else { return }
    
    sentence = """
      We are having a perfectly \(adj) time now.
      Later we will \(verb1) and \(verb2) in the \(noun)
    """
    
    if let navController = presentingViewController as? UINavigationController {
      print(navController)
      if let mainVC = navController.topViewController as? MainVC {
        mainVC.sentence = self.sentence
      }
    }
    dismiss(animated: true, completion: nil)
  
  }
  
  override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
  }
    
  
  
     //MARK: - Navigation

//     In a storyboard-based application, you will often want to do a little preparation before navigation
//    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
////         Get the new view controller using segue.destination.
////         Pass the selected object to the new view controller.
//      let destination = segue.destination as! MainVC
//
//
//
//    }
  

}
