//
//  ViewController.swift
//  Magic 8 Ball
//
//  Created by Charles Coglizer Jr on 4/5/18.
//  Copyright © 2018 Charles Coglizer Jr. All rights reserved.
//

import UIKit
var randomNumberIndex : Int = 0
let ballArray = ["ball1","ball2","ball3","ball4","ball5"]

class ViewController: UIViewController {
    @IBOutlet weak var imageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
       randomImage()
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func askButtonPressed(_ sender: Any) {
        randomImage()
    }
    func randomNumber() {
    randomNumberIndex = Int(arc4random_uniform(5))
    
    }
    func randomImage(){
        randomNumber()
        imageView.image = UIImage(named: ballArray[randomNumberIndex])
    }
    override func motionEnded(_ motion: UIEventSubtype, with event: UIEvent?) {
        randomImage()   
    }
}

