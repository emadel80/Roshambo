//
//  ResultViewController.swift
//  Roshambo
//
//  Created by Emanuel Del Castillo on 4/7/17.
//  Copyright © 2017 Emanuel Del Castillo. All rights reserved.
//

import UIKit

class ResultViewController: UIViewController {
  
  var playerChoice  : String?
  
  @IBOutlet weak var resultImage: UIImageView!
  @IBOutlet weak var resultLabel: UILabel!
  
  override func viewDidLoad() {
    super.viewDidLoad()
    
    resultImage.image = UIImage(
      named: Roshambo.results(playerChoice: playerChoice!)
    )
    
    resultLabel.text  = Roshambo.status
  }

  @IBAction func playAgain() {
    dismiss(animated: true, completion: nil)
  }
  
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
