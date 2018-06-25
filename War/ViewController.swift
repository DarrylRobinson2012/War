//
//  ViewController.swift
//  War
//
//  Created by Darryl Robinson  on 10/17/17.
//  Copyright © 2017 DrobEnterprises. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var RightScoreLabel: UILabel!
    @IBOutlet weak var rightImageView: UIImageView!
    var rightScore = 0
    
    @IBOutlet weak var leftScoreLabel: UILabel!
    @IBOutlet weak var leftImageView: UIImageView!
   var leftScore = 0
    
    let cardNames = ["card2", "card3","card4", "card5", "card6", "card7", "card8", "card9", "card10", "jack", "queen", "king", "ace"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func dealTapped(sender: UIButton){

        //Randomize left number from 0 - 12
        let leftNumber: Int = Int(arc4random_uniform(13))
        leftImageView.image = UIImage(named: cardNames[leftNumber])
        //Randomize right number from 0 - 12
        let rightNumber: Int = Int( arc4random_uniform(13))
        rightImageView.image = UIImage(named: cardNames[rightNumber])
    
        //Compare the card names
        if leftNumber > rightNumber {
            //leftcard wins
            //Incrememt score
            leftScore += 1
            
        //Update Label
            leftScoreLabel.text = String(leftScore)
        }  else if leftNumber == rightNumber {
            // Its a tie
        } else  {
            //Rightcard wins
            //Increment score
            rightScore += 1
        
        //Update label
                RightScoreLabel.text = String(rightScore)
        }
    }

}
    


