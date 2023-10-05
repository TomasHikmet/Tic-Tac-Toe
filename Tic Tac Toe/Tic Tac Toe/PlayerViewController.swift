//
//  PlayerViewController.swift
//  Tic Tac Toe
//
//  Created by Tomas Hikmet on 2023-09-20.
//

import UIKit

class PlayerViewController: UIViewController {
    
    let playerToGame = "playerToGame"
    
    @IBOutlet weak var txtPlayer1: UITextField!
    
    @IBOutlet weak var txtPlayer2: UITextField!
    

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }


    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {

        guard let gameVC = segue.destination as? GameViewController else {return}
        
        guard let txtPlayer1 = txtPlayer1.text else {return}
        guard let txtPlayer2 = txtPlayer2.text else {return}
        
        gameVC.player1Name = txtPlayer1.isEmpty ? "Player 1" : txtPlayer1
        gameVC.player2Name = txtPlayer2.isEmpty ? "Player 2" : txtPlayer2
    }
    

}
