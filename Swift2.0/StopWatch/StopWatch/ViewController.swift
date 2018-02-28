//
//  ViewController.swift
//  NavigationBar
//
//  Created by floatingpoint on 8/18/15.
//  Copyright © 2015 HologramPacific. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var resultLabel: UILabel!

    @IBAction func startPauseBtn(sender: AnyObject) {
        

        if(isRunning){
            stopTimer()
            
        } else {
            startTimer()
        }
        
    }
    
    @IBAction func resetBtn(sender: AnyObject) {
        stopTimer()
        time = 0;
        resultLabel.text = String(time)
        startTimer()
    }
    var isRunning = false;
    var timer = NSTimer()
    var time = 0;
    
    func result(){
        time++
        resultLabel.text = String(time)
    }
    
    func startTimer(){
        timer = NSTimer.scheduledTimerWithTimeInterval(1, target: self, selector: Selector("result"), userInfo: nil, repeats: true)
        isRunning = true;
    }
    func stopTimer(){
        timer.invalidate()
        isRunning = false
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        resultLabel.text = String(time)
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

