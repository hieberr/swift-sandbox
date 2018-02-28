//
//  ViewController.swift
//  ProgrammaticUiDemo
//
//  Created by floatingpoint on 9/2/15.
//  Copyright © 2015 HologramPacific. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var leftButton: UIButton!
    
    var rightButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        
    }

    @IBAction func leftButtonTouchUpInside(sender: AnyObject) {
        addViewAndConstraintsClassicStyle()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
        Classic- old way of (universally? supported)
    */
    func addViewAndConstraintsClassicStyle(){
        let newView = UIView()
        newView.backgroundColor = UIColor.redColor()
        newView.translatesAutoresizingMaskIntoConstraints = false
        // use the following line for Swift 1.2
        // newView.setTranslatesAutoresizingMaskIntoConstraints(false)
        view.addSubview(newView)
        
        let horizontalConstraint = NSLayoutConstraint(item: newView, attribute: NSLayoutAttribute.CenterX, relatedBy: NSLayoutRelation.Equal, toItem: view, attribute: NSLayoutAttribute.CenterX, multiplier: 1, constant: 0)
        view.addConstraint(horizontalConstraint)
        
        let verticalConstraint = NSLayoutConstraint(item: newView, attribute: NSLayoutAttribute.CenterY, relatedBy: NSLayoutRelation.Equal, toItem: view, attribute: NSLayoutAttribute.CenterY, multiplier: 1, constant: 0)
        view.addConstraint(verticalConstraint)
        
        let widthConstraint = NSLayoutConstraint(item: newView, attribute: NSLayoutAttribute.Width, relatedBy: NSLayoutRelation.Equal, toItem: nil, attribute: NSLayoutAttribute.NotAnAttribute, multiplier: 1, constant: 100)
        newView.addConstraint(widthConstraint)
        // view.addConstraint(widthConstraint) // also works
        
        let heightConstraint = NSLayoutConstraint(item: newView, attribute: NSLayoutAttribute.Height, relatedBy: NSLayoutRelation.Equal, toItem: nil, attribute: NSLayoutAttribute.NotAnAttribute, multiplier: 1, constant: 100)
        newView.addConstraint(heightConstraint)
        // view.addConstraint(heightConstraint) // also works
    }
    
    /* 
        Visual format style - uses strings to represent views and thier relationships. supported at least since IOS6, and probably before.
    
        i.e. [button1]-[button2]
        
        NOTES:
        The Visual Format Language can be very helpful when you need to create Auto Layout constraints in code. Instead of creating constraints one by one, the Visual Format Language lets you create a number of constraints with one line of code.
    
        This is because the Visual Format Language works in rows and columns. When using the Visual Format Language, think of adding constraints left to right on one "row" of the view for horizontal constraints. For vertical constraints, you need to think in terms of columns.
    
        The metrics parameter inside the NSLayoutConstraint.constraintsWithVisualFormat() type method, which most tutorials set to nil is a dictionary that can be used instead of placing numbers directly into the strings. For example, we might have a key called "spacing" and set its value to 20 inside the metrics dictionary. Now instead of writing 20 in a visual format string we can write "spacing".
        If you want to work with multipliers then you'll need to use the regular NSLayoutConstraint initializer. Visual Format Language is of no use here (unless you want to reapply constraints on size changes and write the code to do this).
        When using visual format language (VFL) you must set a value for options. No longer can it be nil, as you will find in many tutorials. These NSLayoutFormatOptions are best explained here.
    */
    func addViewAndConstraintsVisualFormatStyle(){
        super.viewDidLoad()
        
        let newView = UIView()
        newView.backgroundColor = UIColor.redColor()
        newView.translatesAutoresizingMaskIntoConstraints = false
        // use the following line for Swift 1.2
        // newView.setTranslatesAutoresizingMaskIntoConstraints(false)
        view.addSubview(newView)
        
        let views = ["view": view, "newView": newView]
        let horizontalConstraints = NSLayoutConstraint.constraintsWithVisualFormat("H:[view]-(<=0)-[newView(100)]", options: NSLayoutFormatOptions.AlignAllCenterY, metrics: nil, views: views)
        view.addConstraints(horizontalConstraints)
        let verticalConstraints = NSLayoutConstraint.constraintsWithVisualFormat("V:[view]-(<=0)-[newView(100)]", options: NSLayoutFormatOptions.AlignAllCenterX, metrics: nil, views: views)
        view.addConstraints(verticalConstraints)
    }
    
    /*
        Classic and Visual Format Mixed - These two methods of autolayout can be used together
    
    */
    func addViewAndConstraintsClassicAndVisualFormatMixedStyle(){
        
        let newView = UIView()
        newView.backgroundColor = UIColor.redColor()
        newView.translatesAutoresizingMaskIntoConstraints = false
        // use the following line for Swift 1.2
        // newView.setTranslatesAutoresizingMaskIntoConstraints(false)
        view.addSubview(newView)
        
        let horizontalConstraint = NSLayoutConstraint(item: newView, attribute: NSLayoutAttribute.CenterX, relatedBy: NSLayoutRelation.Equal, toItem: view, attribute: NSLayoutAttribute.CenterX, multiplier: 1, constant: 0)
        view.addConstraint(horizontalConstraint)
        
        let verticalConstraint = NSLayoutConstraint(item: newView, attribute: NSLayoutAttribute.CenterY, relatedBy: NSLayoutRelation.Equal, toItem: view, attribute: NSLayoutAttribute.CenterY, multiplier: 1, constant: 0)
        view.addConstraint(verticalConstraint)
        
        let views = ["newView": newView]
        
        let widthConstraints = NSLayoutConstraint.constraintsWithVisualFormat("H:[newView(100)]", options: NSLayoutFormatOptions(rawValue: 0), metrics: nil, views: views)
        newView.addConstraints(widthConstraints)
        // view.addConstraints(widthConstraints) // also works
        
        let heightConstraints = NSLayoutConstraint.constraintsWithVisualFormat("V:[newView(100)]", options: NSLayoutFormatOptions(rawValue: 0), metrics: nil, views: views)
        newView.addConstraints(heightConstraints)
        // view.addConstraints(heightConstraints) // also works
    }
    
    /*
        AutoResizeMaskStyle -
    good info about how to think about these:
    http://stackoverflow.com/questions/7754851/autoresizing-masks-programmatically-vs-interface-builder-xib-nib
    
    You can set multiple values with the bitwise OR operator | 
    e.g.
    view.autoresizingMask = UIViewAutoresizingFlexibleRightMargin |
                            UIViewAutoresizingFlexibleLeftMargin |
                            UIViewAutoresizingFlexibleBottomMargin;
    

    */
    func addViewAndConstraintsAutoResizeMaskStyle(){
        let newView = UIView(frame: CGRect(x: 0.0, y: 0.0, width: 100.0, height: 100.0))
        newView.backgroundColor = UIColor.redColor()
        
        newView.translatesAutoresizingMaskIntoConstraints = true
        // use the following line for Swift 1.2
        // newView.setTranslatesAutoresizingMaskIntoConstraints(true)
        
        newView.center = CGPointMake(view.bounds.midX, view.bounds.midY)
        newView.autoresizingMask = [UIViewAutoresizing.FlexibleLeftMargin, UIViewAutoresizing.FlexibleRightMargin, UIViewAutoresizing.FlexibleTopMargin, UIViewAutoresizing.FlexibleBottomMargin]
        // use the following line for Swift 1.2
        // newView.autoresizingMask = UIViewAutoresizing.FlexibleLeftMargin | UIViewAutoresizing.FlexibleRightMargin | UIViewAutoresizing.FlexibleTopMargin | UIViewAutoresizing.FlexibleBottomMargin
        
        view.addSubview(newView)
    }
    
    /*
        Anchor Style - new for IOS9. Not supported pre-ios9. Check for IOS version:
    https://www.hackingwithswift.com/new-syntax-swift-2-availability-checking
    
        also,

    */
    func addViewAndConstraintsAnchorStyle(){
        let newView = UIView()
        newView.backgroundColor = UIColor.redColor()
        newView.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(newView)
        
        let horizontalConstraint = newView.centerXAnchor.constraintEqualToAnchor(view.centerXAnchor)
        let vertivalConstraint = newView.centerYAnchor.constraintEqualToAnchor(view.centerYAnchor)
        let widthConstraint = newView.widthAnchor.constraintEqualToAnchor(nil, constant: 100)
        let heightConstraint = newView.heightAnchor.constraintEqualToAnchor(nil, constant: 100)
        NSLayoutConstraint.activateConstraints([horizontalConstraint, vertivalConstraint, widthConstraint, heightConstraint])
    }

}

