//
//  ViewController.swift
//  DesignPatterns-MvvmDemo
//
//  Created by floatingpoint on 2/27/18.
//  Copyright © 2018 HologramPacific. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var linearInputField: UITextField!
    @IBOutlet weak var convertButton: UIButton!
    @IBOutlet weak var resultField: UILabel!
    
    public var viewModel = ViewModel()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        linearInputField.delegate = self
        convertButton.addTarget(self, action: #selector(onConvertButtonDown), for: .touchUpInside)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }

    @objc func onConvertButtonDown() {
        linearInputField.resignFirstResponder()
        resultField.text = viewModel.convertLinearValue()
    }
}

extension ViewController: UITextFieldDelegate {
    func textFieldDidBeginEditing(textField: UITextField) {
    }

    func textFieldDidBeginEditing(_ textField: UITextField) {
        //print("TextField did begin editing method called")
    }
    func textFieldDidEndEditing(_ textField: UITextField) {
        var result: String =  viewModel.setLinearValue(text: textField.text)
        textField.text = result
    }
    func textFieldShouldBeginEditing(_ textField: UITextField) -> Bool {
        //print("TextField should begin editing method called")
        return true;
    }
    func textFieldShouldClear(_ textField: UITextField) -> Bool {
        //print("TextField should clear method called")
        return true;
    }
    func textFieldShouldEndEditing(_ textField: UITextField) -> Bool {
        //print("TextField should end editing method called")
        return true;
    }
    func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool {
        //print("While entering the characters this method gets called")
        return true;
    }
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        //var value = 0.0
        var result: String =  viewModel.setLinearValue(text: textField.text)
        textField.text = result
        
        if result == "" {
            return false
        } else {
            textField.resignFirstResponder();
            return true
        }
    }
    
    //func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        
    //}
}
