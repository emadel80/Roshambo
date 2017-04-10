//
//  ViewController.swift
//  Roshambo
//
//  Created by Emanuel Del Castillo on 4/7/17.
//  Copyright © 2017 Emanuel Del Castillo. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

  override func viewDidLoad() {
    super.viewDidLoad()
  
  }
  
  @IBAction func paperChoice(_ sender: Any) {
    let resultController = storyboard?.instantiateViewController(withIdentifier: "ResultViewController") as!ResultViewController
    
    resultController.playerChoice = "paper"
    
    present(resultController, animated: true, completion: nil)
  }
  
}

