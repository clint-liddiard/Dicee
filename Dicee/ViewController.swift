//
//  ViewController.swift
//  Dicee
//
//  Created by Clinton Liddiard on 9/1/17.
//  Copyright © 2017 LLApps. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var randomDiceIndex1 : Int = 0, randomDiceIndex2 : Int = 0;
    
    @IBOutlet weak var diceImageView1: UIImageView!
    @IBOutlet weak var diceImageView2: UIImageView!
    
    let diceArray = ["dice1", "dice2", "dice3", "dice4", "dice5", "dice6"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        diceDisplay()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func rollButtonPressed(_ sender: UIButton) {
        
        diceDisplay()
        
        //diceImageView1.image = UIImage(named: diceArray[randomDiceIndex1])
        //diceImageView2.image = UIImage(named: diceArray[randomDiceIndex2])
        
    }
    
    func diceRoll() ->[Int]{
    
        var dieRoll: [Int] = [0,0];
        randomDiceIndex1 = Int(arc4random_uniform(6))
        randomDiceIndex2 = Int(arc4random_uniform(6))
        
        dieRoll[0] = randomDiceIndex1
        dieRoll[1] = randomDiceIndex2
    
        return dieRoll
    }
    func diceDisplay(){
        
        var rolled: [Int] = diceRoll();
        
        diceImageView1.image = UIImage(named: diceArray[rolled[0]])
        diceImageView2.image = UIImage(named: diceArray[rolled[1]])
        
        
    }
    override func motionEnded(_ motion: UIEventSubtype, with event: UIEvent?) {
        diceDisplay()
    }
    
}

