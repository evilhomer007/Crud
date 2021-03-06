//
//  ViewController.swift
//  Postcard
//
//  Created by Homer on 10/27/14.
//  Copyright (c) 2014 Stone Dog Digital Inc. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var messageLabel: UILabel!
    @IBOutlet weak var messageLabelTwo: UILabel!
    
    @IBOutlet weak var enterNameTextField: UITextField!
    @IBOutlet weak var enterMessgeTextField: UITextField!
    
    
    @IBOutlet weak var mailButton: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        // Do any additional setup after loading the view, typically from a nib.
    }

   
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    
    
    @IBAction func sendMailButtonPressed(sender: UIButton) {
        messageLabel.hidden = false
        messageLabelTwo.hidden = false
        messageLabel.text = enterMessgeTextField.text
        //messageLabelTwo.text = enterMessgeTextField.text
        messageLabel.textColor = UIColor.redColor()
        messageLabelTwo.textColor = UIColor.blueColor()
        
        
        enterMessgeTextField.text = ""
        enterMessgeTextField.resignFirstResponder()
        enterNameTextField.text = ""
        enterNameTextField.resignFirstResponder()
        
        mailButton.setTitle("It's Gone Baby!", forState: UIControlState.Normal)
        
        
        }

}
