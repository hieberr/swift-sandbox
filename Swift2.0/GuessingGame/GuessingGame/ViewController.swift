//
//  ViewController.swift
//  GuessingGame
//
//  Created by floatingpoint on 8/14/15.
//  Copyright © 2015 HologramPacific. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var userNumberField: UITextField!
    @IBOutlet weak var resultLabel: UILabel!
    
    @IBAction func submitButtonPressed(sender: AnyObject) {
        if userNumberField.text == "" {
            resultLabel.text = "You must input a number between 1 and 5."
        } else {

            let userNumber:String = userNumberField.text!
        
            if userNumber == numberToGuess {
            resultLabel.text = "Good Job \(userNumber) was the correct number."
            } else {
                resultLabel.text = "Incorrect, \(userNumber) was not the correct number."
            }
        }
    }
    var numberToGuess:String = ""
    override func viewDidLoad() {
        super.viewDidLoad()
        numberToGuess = String(arc4random_uniform(5))

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

