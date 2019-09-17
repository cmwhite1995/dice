//
//  ViewController.swift
//  dice
//
//  Created by christopher white on 9/10/19.
//  Copyright © 2019 christopher white. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
   
    let diceArray = ["dice1","dice2","dice3","dice4","dice5","dice6"]  //file names of dice pictures
    var randomDiceIndex1: Int = 0
    var randomDiceIndexView2: Int = 0
    
    @IBOutlet weak var diceView1: UIImageView!
    @IBOutlet weak var diceView2: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateDiceImage()
    }
    
    @IBAction func rollButtonPressed(_ sender: Any) {
        
        updateDiceImage()
    }
    
    override func motionEnded(_ motion: UIEvent.EventSubtype, with event:UIEvent?) {
        
        updateDiceImage()
    }
    
    func updateDiceImage(){ //changes image of both dice
        
        randomDiceIndex1 = Int.random(in: 0...5)
        randomDiceIndexView2 = Int.random(in: 0...5)
        
        diceView1.image = UIImage(named:diceArray[randomDiceIndex1])
        diceView2.image = UIImage(named: diceArray[randomDiceIndexView2])
        
    }
}

