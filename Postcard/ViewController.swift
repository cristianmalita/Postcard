//
//  ViewController.swift
//  Postcard
//
//  Created by Cristian Malita on 16.11.2014.
//  Copyright (c) 2014 Cristian Malita. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    //@IBOutlet declarations

    @IBOutlet weak var enterNameTextField: UITextField!
    @IBOutlet weak var enterMessageTextField: UITextField!
    @IBOutlet weak var messageLabel: UILabel!
    @IBOutlet weak var mailButton: UIButton!
    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var nameLabel: UILabel!
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func sendMailButtonPressed(sender: AnyObject) {
      //Actions if name is present
        nameLabel.textColor = UIColor.blueColor()
        nameLabel.text = nameTextField.text
        nameTextField.resignFirstResponder()
        nameTextField.text = ""

    //Actions if message is present
        messageLabel.hidden = false
        messageLabel.text = enterMessageTextField.text
        messageLabel.textColor = UIColor.redColor()
        enterMessageTextField.resignFirstResponder()
        enterMessageTextField.text = ""
        
    //Change title for mail button after it is pressed
        
        mailButton.setTitle("Mail sent!", forState: UIControlState.Normal)
        
        
    }

}

