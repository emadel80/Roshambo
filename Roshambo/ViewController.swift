//
//  ViewController.swift
//  Roshambo
//
//  Created by Emanuel Del Castillo on 4/7/17.
//  Copyright © 2017 Emanuel Del Castillo. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
  
  @IBOutlet weak var playerScoreLabel:   UILabel!
  @IBOutlet weak var computerScoreLabel: UILabel!
  
  override func viewDidLoad() {
    super.viewDidLoad()
  }
  
  override func viewWillAppear(_ animated: Bool) {
    playerScoreLabel.text   = "Player: \(Roshambo.playerScore)"
    computerScoreLabel.text =
      "Computer: \(Roshambo.computerScore)"
  }
  
  override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
    if segue.identifier == "RockSelectionResult" {
      let controller = segue.destination as! ResultViewController
      
      controller.playerChoice = "rock"
    }
    else {
      let controller = segue.destination as! ResultViewController
      
      controller.playerChoice = "scissors"
    }
  }
  
  @IBAction func paperChoice() {
    let resultController = storyboard?.instantiateViewController(withIdentifier: "ResultViewController") as!ResultViewController
    
    resultController.playerChoice = "paper"
    
    present(resultController, animated: true, completion: nil)
  }
  
  @IBAction func rockChoice() {
    performSegue(withIdentifier: "RockSelectionResult", sender: self)
  }
}

