//
//  ViewController.swift
//  Dicee
//
//  Created by Charles Coglizer Jr on 4/1/18.
//  Copyright © 2018 Charles Coglizer Jr. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var randomDiceIndex1 : Int = 0
    var randomDiceIndex2 : Int = 0
    let diceArray = ["dice1","dice2","dice3","dice4","dice5","dice6"]
    
    
    @IBOutlet weak var diceImageView: UIImageView!
    
    @IBOutlet weak var diceImageView2: UIImageView!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        updateDiceImages()
    
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func rollButtonPressed(_ sender: UIButton) {
        updateDiceImages()
    
    
    }
    func updateDiceImages(){
    randomDiceIndex1 = Int(arc4random_uniform(6))
    randomDiceIndex2 = Int(arc4random_uniform(6))
    
    
    
    diceImageView.image = UIImage(named: diceArray[randomDiceIndex1])
    diceImageView2.image = UIImage(named: diceArray[randomDiceIndex2])


    }
    override func motionEnded(_ motion: UIEventSubtype, with event: UIEvent?) {
        updateDiceImages()
        
    }

}


