//
//  ViewController.swift
//  Dice
//
//  Created by Maria Syed on 19/11/2017.
//  Copyright © 2017 Maria Syed. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var diceImageView1: UIImageView!
    @IBOutlet weak var diceImageView2: UIImageView!
    
    let diceArray = ["dice1", "dice2", "dice3", "dice4", "dice5", "dice6"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateDiceImages()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func rollButtonPressed(_ sender: UIButton) {
        updateDiceImages()
    }
    
    func updateDiceImages() {
        diceImageView1.image = UIImage(named: getRandElement(array: diceArray))
        diceImageView2.image = UIImage(named: getRandElement(array: diceArray))
    }
    
    func getRandElement(array: Array<String>) -> String {
        let randomIndex : Int = Int(arc4random_uniform(UInt32(array.count)))
        return array[randomIndex]
    }
    
    override func motionEnded(_ motion: UIEventSubtype, with event: UIEvent?) {
        updateDiceImages()
    }
    
}

