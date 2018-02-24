//
//  SecondViewController.swift
//  StoryBoardLearn
//
//  Created by floatingpoint on 8/8/16.
//  Copyright © 2016 HologramPacific. All rights reserved.
//

import Foundation
import UIKit
class SecondViewController: UIViewController {
    
    @IBOutlet var switchState: UILabel!
    var data : String?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        if let label = data {
            switchState.text = data
        }
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
}

