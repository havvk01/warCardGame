//
//  ViewController.swift
//  WarCardGame
//
//  Created by Slava Havvk on 25.01.2022.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var leftImageView: UIImageView!
    
    @IBOutlet weak var rightImageView: UIImageView!
    
    @IBOutlet weak var leftScoreLabel: UILabel!
    
    @IBOutlet weak var rightScoreLabel: UILabel!
    
    var playerScore = 0
    var cpuScore = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    
    @IBAction func dealTapped(_ sender: Any) {
        
        let leftRandCard = Int.random(in: 2...14)
        let rightRandCard = Int.random(in: 2...14)

        
//        print("Deal Tapped!")
//        leftImageView.image = UIImage(named: "card14")
        leftImageView.image = UIImage(named: "card\(leftRandCard)")
//        leftImageView.image = UIImage(named: "card"+String(leftRandCard))
        rightImageView.image = UIImage(named: "card"+String(rightRandCard))

        
        
        
        
        if leftRandCard > rightRandCard {
            playerScore+=1
            leftScoreLabel.text = String(playerScore)
            
        }

        else if leftRandCard < rightRandCard {
            cpuScore+=1
            rightScoreLabel.text = String(cpuScore)
        }

        else {

        }
        
    }
    
    
    
    
    
}

