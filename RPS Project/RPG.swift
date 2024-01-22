//
//  RPG.swift
//  RPS Project
//
//  Created by 11k on 1/22/24.
//

import Foundation

enum GameState{
    case start, win, lose, draw
}

func randomSign() -> Sign {
let sign = Int.random(in: 0...2)
if sign == 0 { return .rock }
else if sign == 1 { return .paper }
else { return .scissors } }



enum Sign{
    case rock, paper, scissors
    
    
    var emoji:String{
        switch self{
        case .rock:
            return "🪨"
        case .paper:
            return "📃"
        case .scissors:
            return "✂️"
        }
        
    }
    
    func checkWin(opp:Sign) -> GameState
    
    {
        if(self == .paper && opp == .rock){
            return .win        }
        if(self == .paper && opp == .paper){
            return .draw
        }
        if(self == .paper && opp == .scissors){
            return .lose
        }
        if(self == .scissors && opp == .scissors){
            return .draw
        }
        if(self == .scissors && opp == .rock){
            return .lose
        }
        if(self == .scissors && opp == .paper){
            return .win
        }
        if(self == .rock && opp == .scissors){
            return .win
        }
        if(self == .rock && opp == .rock){
            return .draw
        }
        if(self == .rock && opp == .paper){
            return .lose
        }
        
        return .draw
        
    }
    
    
}














