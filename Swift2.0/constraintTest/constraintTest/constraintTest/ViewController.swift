//
//  ViewController.swift
//  constraintTest
//
//  Created by floatingpoint on 12/10/15.
//  Copyright © 2015 HologramPacific. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let button1 = UIButton()
        button1.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(button1)
        button1.backgroundColor = UIColor.redColor()
        button1.setTitle("1", forState: .Normal)
        
        let horizontalConstraint = NSLayoutConstraint(item: button1, attribute: NSLayoutAttribute.CenterX, relatedBy: NSLayoutRelation.Equal, toItem: view, attribute: NSLayoutAttribute.CenterX, multiplier: 1, constant: 0)
        view.addConstraint(horizontalConstraint)
        
        let verticalConstraint = NSLayoutConstraint(item: button1, attribute: NSLayoutAttribute.CenterY, relatedBy: NSLayoutRelation.Equal, toItem: view, attribute: NSLayoutAttribute.CenterY, multiplier: 1, constant: 0)
        view.addConstraint(verticalConstraint)
        
        let widthConstraint = NSLayoutConstraint(item: button1, attribute: NSLayoutAttribute.Width, relatedBy: NSLayoutRelation.Equal, toItem: nil, attribute: NSLayoutAttribute.NotAnAttribute, multiplier: 1, constant: 100)
        view.addConstraint(widthConstraint)
        // view.addConstraint(widthConstraint) // also works
        
        let heightConstraint = NSLayoutConstraint(item: button1, attribute: NSLayoutAttribute.Height, relatedBy: NSLayoutRelation.Equal, toItem: nil, attribute: NSLayoutAttribute.NotAnAttribute, multiplier: 1, constant: 100)
        view.addConstraint(heightConstraint)

        
        button1.addTarget(self, action: "onUpOutside:", forControlEvents: UIControlEvents.TouchUpOutside)
        button1.addTarget(self, action: "onUpInside:", forControlEvents: UIControlEvents.TouchUpInside)
            print("onUpInside")
        
        
        let button2 = UIButton()
        button2.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(button2)
        button2.backgroundColor = UIColor.redColor()
        button2.setTitle("2", forState: .Normal)

        let hc2 = NSLayoutConstraint(item: button2, attribute: NSLayoutAttribute.Left, relatedBy: NSLayoutRelation.Equal, toItem: button1, attribute: NSLayoutAttribute.Right, multiplier: 1, constant: 10)
        view.addConstraint(hc2)
        
        let vc2 = NSLayoutConstraint(item: button2, attribute: NSLayoutAttribute.Top, relatedBy: NSLayoutRelation.Equal, toItem: button1, attribute: NSLayoutAttribute.Bottom, multiplier: 1, constant: 10)
        view.addConstraint(vc2)
        
        let wc2 = NSLayoutConstraint(item: button2, attribute: NSLayoutAttribute.Width, relatedBy: NSLayoutRelation.Equal, toItem: nil, attribute: NSLayoutAttribute.NotAnAttribute, multiplier: 1, constant: 100)
        view.addConstraint(wc2)
        
        let htc2 = NSLayoutConstraint(item: button2, attribute: NSLayoutAttribute.Height, relatedBy: NSLayoutRelation.Equal, toItem: nil, attribute: NSLayoutAttribute.NotAnAttribute, multiplier: 1, constant: 100)
        view.addConstraint(htc2)
        
    }

    func onUpOutside(sender: UIButton!) {
        print("onUpOutside")
    }

    func onUpInside(sender: UIButton!) {
        print("onUpInside")
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

