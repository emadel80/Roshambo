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
    let artificialPlayerChoice =
      choices[1 + arc4random().hashValue % 3]
    
    if playerChoice == artificialPlayerChoice {
      status = "Its a tie.  No one wins!"
      return outcome.tie
    }
    else if winRules[playerChoice] == artificialPlayerChoice {
      let choice  = winningChoice(playerChoice: playerChoice)!
          status += "  You win!"
      return choice
    }
    else {
      let choice =
        winningChoice(playerChoice: artificialPlayerChoice)!
          status = "  You loose!"
      return choice
    }
  }
  
  private static func winningChoice(playerChoice: String) -> String? {
    switch playerChoice {
      case "paper":
        status = "Paper covers rock."
        return outcome.paperWins
      case "rock":
        status = "Rock crushes scissors."
        return outcome.rockWins
      case "scissors":
        status = "Scissors cut paper."
        return outcome.scissorsWins
    default:
        return nil
    }
  }
}
