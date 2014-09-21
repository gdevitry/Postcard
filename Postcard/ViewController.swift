//
//  ViewController.swift
//  Postcard
//
//  Created by Greg on 9/11/14.
//  Copyright (c) 2014 physicy.com. All rights reserved.
//

import UIKit

class ViewController: UIViewController {


    @IBOutlet weak var enterNameLabel: UILabel!
    @IBOutlet weak var enterNameTextfield: UITextField!
    
    @IBOutlet weak var messageLabel: UILabel!
    
    @IBOutlet weak var enterMessageTextfield: UITextField!
  
    @IBOutlet weak var mailButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

  

    @IBAction func mailButtonSendAction(sender: UIButton) {
        messageLabel.text=enterMessageTextfield.text
        messageLabel.hidden=false
        
        enterNameLabel.text="Message Sent to:" + enterNameTextfield.text
        enterNameLabel.hidden=false
        enterMessageTextfield.text=""
        enterMessageTextfield.resignFirstResponder()
        enterNameTextfield.text=""
        enterNameTextfield.resignFirstResponder()
        
        messageLabel.textColor=UIColor.redColor()
        mailButton.setTitle("Mail Sent", forState: UIControlState.Normal)
        
    }

}

