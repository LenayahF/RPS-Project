//
//  ViewController.swift
//  RPS Project
//
//  Created by 11k on 1/22/24.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var scissors: UIButton!
    @IBOutlet weak var paper: UIButton!
    @IBOutlet weak var rock: UIButton!
    @IBOutlet weak var playAgain: UIButton!
    override func viewDidLoad() {
        updateUI(state: .start)
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        updateUI(state: .start)
        rock.isHidden = false
        paper.isHidden = false
        scissors.isHidden = false
    }

    @IBAction func PlayAgain(_ sender: Any) {
        updateUI(state: .start)
        
        
    }
    @IBAction func Scissors(_ sender: Any)
    {
        play(sign: .scissors)
    }
    @IBAction func Paper(_ sender: Any)
    {
        play(sign: .paper)
        
    }
    @IBAction func Rock(_ sender: Any)
    {
        play(sign: .rock)
        
    }
    @IBOutlet weak var ComputerSign: UILabel!
    @IBOutlet weak var StatusOfGame: UILabel!
  
    
    
    
    func updateUI(state:GameState)
    {
        if state == .start {
            ComputerSign.text = "🤖"
            playAgain.isHidden =  true
            rock.isEnabled =  true
            paper.isEnabled = true
            scissors.isEnabled = true
            rock.isHidden = false
            paper.isHidden = false
            scissors.isHidden = false
            StatusOfGame.text = "Rock, Paper, Scissors?"
            
        }
        
        else if state == .win{
            StatusOfGame.text = "You win"
        }
        else if state == .lose{
            StatusOfGame.text = "You lose"
        }
        else if state == .draw{
            StatusOfGame.text = "It's a draw"
        }
    }
    
    func play(sign: Sign){
        let computer = randomSign()
        
        var state = sign.checkWin(opp: computer)
        ComputerSign.text = computer.emoji
        updateUI(state: state)
        rock.isEnabled =  false
        paper.isEnabled = false
        scissors.isEnabled = false
        playAgain.isHidden =  false
    }
    
    
    
    
    
}

