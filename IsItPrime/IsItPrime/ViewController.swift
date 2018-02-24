//
//  ViewController.swift
//  IsItPrime
//
//  Created by floatingpoint on 8/18/15.
//  Copyright © 2015 HologramPacific. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var numberTextField: UITextField!
    @IBAction func isItPrimeBtn(sender: AnyObject) {
        
        

        
        if let number:Int = Int(numberTextField.text!){
            var isPrime:Bool = true
        
            if(number == 1){
                isPrime = false;
            }
        
            if((number != 1) && (number != 2)){
                for var i = 2; i <= (number / 2); ++i {
                    if ((number % i) == 0) {
                        isPrime = false
                    }
                }
            }
        
            if(isPrime){
                resultLabel.text = "Prime"
            } else {
                resultLabel.text = "Not Prime"
            }
        } else {
            resultLabel.text = "Please enter a whole number"
        }
    }
    
    @IBOutlet weak var resultLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

