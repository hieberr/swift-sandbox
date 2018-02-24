//
//  ViewController.swift
//  scrollViewDemo
//
//  Created by floatingpoint on 1/19/16.
//  Copyright © 2016 HologramPacific. All rights reserved.
//
import UIKit

class ViewController : UIViewController, UIScrollViewDelegate, UITextFieldDelegate {
    var scrollView : UIScrollView!
    var contentView : UIView!
    let rightIsNear = true
    
    override func loadView() {
        super.loadView()
        self.view = UIView(frame: CGRectZero)
        scrollView = UIScrollView(frame:CGRectZero)
        //scrollView.scrollEnabled = true
        //scrollView.showsHorizontalScrollIndicator = false
        
        //scrollView.sizeToFit()
        scrollView.translatesAutoresizingMaskIntoConstraints = false
        self.view.addSubview(scrollView)
        scrollView.backgroundColor = UIColor.blueColor()
        
        contentView = UIView()
        contentView.translatesAutoresizingMaskIntoConstraints = false
        contentView.backgroundColor = UIColor.redColor()
        scrollView.addSubview(contentView)
        //scrollView.contentMode = rightIsNear ? .Right : .Left
        
        let viewsDictionary = [
            //"mainView" : self.view,
            "scrollView" : scrollView,
            "contentView" : contentView
        ]
        var constraints : [NSLayoutConstraint] = []
        constraints += NSLayoutConstraint.constraintsWithVisualFormat("H:|[scrollView]|", options: [], metrics: nil, views: viewsDictionary)

        constraints += NSLayoutConstraint.constraintsWithVisualFormat("V:|-50-[scrollView(==60)]|", options: [], metrics: nil, views: viewsDictionary)
        
        constraints += NSLayoutConstraint.constraintsWithVisualFormat("H:|[contentView]|", options: [], metrics: nil, views: viewsDictionary)
        constraints += NSLayoutConstraint.constraintsWithVisualFormat("V:|[contentView]|", options: [], metrics: nil, views: viewsDictionary)
        
        //make the width of content view to be the same as that of the containing view.
        constraints += NSLayoutConstraint.constraintsWithVisualFormat("V:[contentView(==50)]", options: [], metrics: nil, views: viewsDictionary)
        
        self.view.addConstraints(constraints)
        
        self.view.contentMode = UIViewContentMode.Redraw
    }
    
    //load all the subviews after the main view and scrollview loaded.
    override func viewDidLoad() {
        var viewsDict = [String: UIView]()
        viewsDict["contentView"] = contentView
        viewsDict["super"] = self.view
        var names : [String] = []
        var constraints : [NSLayoutConstraint] = []
        contentView.translatesAutoresizingMaskIntoConstraints = false
        var v_constraints = "H:|-"
        
        let titles = ["however", "then", "if", "therefore", "many", "and", "should", "can", "want"]
        for title in titles {
            var subview = UIButton()
            contentView.addSubview(subview)
            subview.translatesAutoresizingMaskIntoConstraints = false
            subview.backgroundColor = UIColor.brownColor()
            subview.sizeToFit()
            subview.setTitle(title, forState: .Normal)
            
            let name = title//"subview_\(i)"
            names.append("[\(name)(>=20)]")
            viewsDict[name] = subview

            
            
            v_constraints += "[\(name)(>=20)]-"
            //self.contentView.addConstraints(NSLayoutConstraint.constraintsWithVisualFormat("H:|[subview_\(i)]|", options: NSLayoutFormatOptions(0), metrics: nil, views: viewsDict))
            constraints += NSLayoutConstraint.constraintsWithVisualFormat("V:|[\(name)]|", options: [], metrics: nil, views: viewsDict)
        }
        if rightIsNear {
            names = names.reverse()
        }
        let h_constraints = "H:|-" + names.joinWithSeparator("-4-") + "-|"
        v_constraints += "|"
        constraints += NSLayoutConstraint.constraintsWithVisualFormat(h_constraints, options: NSLayoutFormatOptions.AlignAllTop, metrics: nil, views: viewsDict)
        contentView.addConstraints(constraints)
        

    }
    
    func alignScrollViewOnNearSide() {
        if rightIsNear {
            //        let bottomOffset = CGPoint(x: 0, y: scrollView.contentSize.height - scrollView.bounds.size.height)
            let rightOffset = CGPoint(x: scrollView.contentSize.width - scrollView.bounds.size.width, y: 0)
            scrollView.setContentOffset(rightOffset, animated: false)
            //   let rect = CGRectMake(scrollView.contentSize.width - 1,scrollView.contentSize.height - 1, 1, 1)
            //   scrollView.scrollRectToVisible(rect, animated: false)
        }
    }
    
    override func viewWillAppear(animated: Bool) {
//        alignScrollViewOnNearSide()
    }
    
    override func viewDidLayoutSubviews() {
        alignScrollViewOnNearSide()
    }
}
