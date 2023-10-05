//
//  GameViewController.swift
//  Tic Tac Toe
//
//  Created by Tomas Hikmet on 2023-09-20.
//

import UIKit

class GameViewController: UIViewController {
    
    @IBOutlet weak var lblPlayer1Name: UILabel!
    @IBOutlet weak var lblPlayer2Name: UILabel!
    @IBOutlet weak var lblcheckforvictory1: UILabel!
    
    @IBOutlet weak var lblcheckforvictory2: UILabel!
    var currentPlayer = 1
    var gameBoard = [0, 0, 0, 0, 0, 0, 0, 0, 0]

    @IBOutlet weak var Reset: UIButton!
    
    @IBOutlet var imgCells: [UIImageView]!
    

    
    var player1Name: String?
    var player2Name: String?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        lblPlayer1Name.text = player1Name ?? "Player 1"
        lblPlayer2Name.text = player2Name ?? "Player 2"
        lblcheckforvictory1.text = ""
        lblcheckforvictory2.text = ""
        // Do any additional setup after loading the view.
    }
    
    
    
    @IBAction func onCellTap(_ sender: UITapGestureRecognizer) {
        
        guard let imageCell = sender.view as? UIImageView else {return}
        
        if imageCell.image == nil {
            gameBoard[imageCell.tag] = currentPlayer
            
            imageCell.image = UIImage(systemName: currentPlayer == 1 ? "xmark" : "circle")
            imageCell.tintColor = currentPlayer == 1 ? .blue : .red
            
            gameBoard[imageCell.tag] = currentPlayer
            
            let result = checkForVictory()
            if result == 1 {
                            // Player 1 wins
                lblcheckforvictory1.text = "won"
                        } else if result == 2 {
                            // Player 2 wins
                            lblcheckforvictory2.text = "won"
                        } else if result == 0 && !gameBoard.contains(0) {
                            lblcheckforvictory1.text = "Draw"
                            lblcheckforvictory2.text = "Draw"
    
                            // It's a draw
                        } else {
            switchPlayers()
                            
        }
    }
    
    func switchPlayers() {
        if currentPlayer == 1 {
            currentPlayer = 2
        } else {
            currentPlayer = 1
        }
    }
    // Function to check for a victory in Tic Tac Toe
    func checkForVictory() -> Int {
        
        
        
        if gameBoard[0] != 0 && gameBoard[0] == gameBoard[1] && gameBoard[0] == gameBoard[2] {
            
            
            
            return gameBoard[0]
        }
        if gameBoard[3] != 0 && gameBoard[3] == gameBoard[4] && gameBoard[4] == gameBoard[5]{

         

               

         

                    return gameBoard[3]
        }

         
        if gameBoard[6] != 0 && gameBoard[6] == gameBoard[7] && gameBoard[7] == gameBoard[8]{


            

                 
      

                 return gameBoard[6]

      
            
        }
        
   
        if gameBoard[0] != 0 && gameBoard[0] == gameBoard[3] && gameBoard[3] == gameBoard[6]{

         

            

         

                    return gameBoard[0]
        
    }
        
        if gameBoard[1] != 0 && gameBoard[1] == gameBoard[4] && gameBoard[4] == gameBoard[7]{

         

                  
         

                    return gameBoard[1]

         
  
    }
        if gameBoard[2] != 0 && gameBoard[2] == gameBoard[5] && gameBoard[5] == gameBoard[8]{

 

        

 

            return gameBoard[2]
    }
        if gameBoard[0] != 0 && gameBoard[0] == gameBoard[4] && gameBoard[4] == gameBoard[8]{

         

         

                    return gameBoard[0]
    }
        if gameBoard[2] != 0 && gameBoard[2] == gameBoard[4] && gameBoard[4] == gameBoard[6]{

         

         

                    return gameBoard[2]
    }
        
    return 0
        
    }
        func resetGame() {
                // Clear the gameBoard array and reset the UI
                gameBoard = [0, 0, 0, 0, 0, 0, 0, 0, 0]
                currentPlayer = 1
                
                // Clear the image views
                for imageView in imgCells {
                    imageView.image = nil
    }
    }
    }
    }
