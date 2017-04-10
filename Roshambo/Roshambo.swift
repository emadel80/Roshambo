//
//  Roshambo.swift
//  Roshambo
//
//  Created by Emanuel Del Castillo on 4/7/17.
//  Copyright © 2017 Emanuel Del Castillo. All rights reserved.
//

import UIKit

class Roshambo {
  
          static var status   = ""
  private static let choices  = ["paper", "rock", "scissors"]
  
  private static let winRules = [
    "paper"    : "rock",
    "rock"     : "scissors",
    "scissors" : "paper"
  ]
  
  private static let outcome = (
    tie :         "itsATie",
    paperWins:    "PaperCoversRock",
    rockWins:     "RockCrushesScissors",
    scissorsWins: "ScissorsCutPaper"
  )
  
  static func results(playerChoice: String) -> String {
    let artificialPlayerChoice = choices[Int(arc4random() % 3)]
    
    if playerChoice == artificialPlayerChoice {
      status = "Its a tie.  No one wins!"
      return outcome.tie
    }
    else if winRules[playerChoice] == artificialPlayerChoice {
      status = "  You win!"
      return winningChoice(playerChoice: playerChoice)!
    }
    else {
      status = "  You loose!"
      return winningChoice(playerChoice: artificialPlayerChoice)!
    }
  }
  
  private static func winningChoice(playerChoice: String) -> String? {
    switch playerChoice {
      case "paper":
        status = "Paper covers rock.  \(status)"
        return outcome.paperWins
      case "rock":
        status = "Rock crushes scissors.  \(status)"
        return outcome.rockWins
      case "scissors":
        status = "Scissors cut paper.  \(status)"
        return outcome.scissorsWins
    default:
        return nil
    }
  }
}
