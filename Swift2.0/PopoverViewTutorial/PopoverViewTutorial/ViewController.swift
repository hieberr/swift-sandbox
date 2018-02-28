
//
// ViewController.swift
// SwiftPizzaPopover
//
// Created by Steven Lipton on 8/27/14.
// Copyright (c) 2014 MakeAppPie.Com. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var openPopover: UIButton!
    var currentPopover:UIPopoverController! = nil
    
    @IBAction func showBarPopoverButton(sender: UIBarButtonItem) {

        currentPopover?.dismissPopoverAnimated(true)

        let aPopover = UIPopoverController(contentViewController: PopoverProgVC())
        currentPopover = aPopover
        aPopover.presentPopoverFromBarButtonItem(sender, permittedArrowDirections: .Any, animated: true)
    }
    
    @IBAction func openPopover(sender:UIButton){
        //performSegueWithIdentifier("Popover", sender: self)
        let vc = PopoverProgVC()
        let popRect = openPopover.frame
        let aPopover = UIPopoverController(contentViewController: vc)
        aPopover.presentPopoverFromRect(popRect, inView: view, permittedArrowDirections: UIPopoverArrowDirection.Any, animated: true)
    }
    
    @IBAction func openPizzaModal(sender: UIButton) {
        //performSegueWithIdentifier("Pizza", sender: self)
        presentViewController(PizzaModalProgVC(), animated: true, completion: nil)
        
    }
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
}

//
// PizzaModalVC.swift
// SwiftPizzaPopover
//
// Created by Steven Lipton on 8/27/14.
// Copyright (c) 2014 MakeAppPie.Com. All rights reserved.
//

import UIKit

class PizzaModalVC: UIViewController {
    
    @IBAction func pizzaModalDone(sender: UIButton) {
        dismissViewControllerAnimated(true, completion: nil)
    }
    override func viewDidLoad() {
        super.viewDidLoad()
    }
}

//
// PopoverVC.swift
// SwiftPizzaPopover
//
// Created by Steven Lipton on 8/27/14.
// Copyright (c) 2014 MakeAppPie.Com. All rights reserved.
//

import UIKit

class PopoverVC: UIViewController {
    @IBAction func popoverDone(sender: UIButton) {
        dismissViewControllerAnimated(true, completion: nil)
    }
    override func viewDidLoad() {
        super.viewDidLoad()
    }
}

//
// PizzaModalProgVC.swift
// SwiftPizzaPopover
//
// Created by Steven Lipton on 8/28/14.
// Copyright (c) 2014 MakeAppPie.Com. All rights reserved.
//

import UIKit

class PizzaModalProgVC: UIViewController {
    let dismissButton = UIButton(type: UIButtonType.Custom) as UIButton!
    let myImage:UIImage! = UIImage(named:"pizza_sm")
    
    func pizzaDidFinish(){
        dismissViewControllerAnimated(true, completion: nil)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //set our transition style
        modalTransitionStyle = UIModalTransitionStyle.FlipHorizontal
        
        // Build a programmatic view
        view.backgroundColor = UIColor(red: 0.8, green: 0.5, blue: 0.2, alpha: 1.0)
        //add the image
        if (myImage != nil){
            let myImageView = UIImageView(image: myImage)
            myImageView.frame = view.frame
            myImageView.frame = CGRectMake(10, 10, 200, 200)
            view.addSubview(myImageView)
        }else{
            print("image not found")
        }
        
        //add the label
        let myLabel = UILabel()
        myLabel.text = "BBQ Chicken Pizza!"
        myLabel.frame = CGRectMake(220, 10, 300, 50)
        myLabel.font = UIFont(name: "Helvetica", size: 24)
        myLabel.textAlignment = .Left
        view.addSubview(myLabel)
        
        //add the done button
        dismissButton.setTitle("Done", forState: .Normal)
        dismissButton.titleLabel?.font = UIFont(name: "Helvetica", size: 24)
        dismissButton.titleLabel?.textAlignment = .Left
        dismissButton.frame = CGRectMake(150,175,200,50)
        dismissButton.addTarget(self, action: "pizzaDidFinish", forControlEvents: .TouchUpInside)
        view.addSubview(dismissButton)
    }
    
}

//
// PopoverProgVC.swift
// SwiftPizzaPopover
//
// Created by Steven Lipton on 8/28/14.
// Copyright (c) 2014 MakeAppPie.Com. All rights reserved.
//

import UIKit

class PopoverProgVC: UIViewController {
    let dismissButton = UIButton(type: UIButtonType.Custom) as UIButton!
    let myImage:UIImage! = UIImage(named:"popover_sm")
    
    func pizzaDidFinish(){
        dismissViewControllerAnimated(true, completion: nil)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Build a programmatic view
        //background
        view.backgroundColor = UIColor(red: 0.8, green: 0.5, blue: 0.2, alpha: 1.0)
        //image
        if (myImage != nil){
            let myImageView = UIImageView(image: myImage)
            myImageView.frame = view.frame
            myImageView.frame = CGRectMake(10, 10, 200, 200)
            view.addSubview(myImageView)
        }else{
            print("image not found")
        }
        // add the label
        let myLabel = UILabel()
        myLabel.text = "Cheddar Popover"
        myLabel.frame = CGRectMake(10, 250, 300, 50)
        myLabel.font = UIFont(name: "Helvetica", size: 24)
        myLabel.textAlignment = .Left
        view.addSubview(myLabel)
        // add the done button
        dismissButton.setTitle("Done", forState: .Normal)
        dismissButton.titleLabel?.font = UIFont(name: "Helvetica", size: 24)
        dismissButton.titleLabel?.textAlignment = .Left
        dismissButton.frame = CGRectMake(150,175,200,50)
        dismissButton.addTarget(self, action: "pizzaDidFinish", forControlEvents: .TouchUpInside)
        view.addSubview(dismissButton)
    }
}