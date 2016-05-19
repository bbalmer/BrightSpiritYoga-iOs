//
//  SubmitClassController.swift
//  Bright Spirit Yoga
//
//  Created by Brad Balmer on 5/17/16.
//  Copyright © 2016 Remlab. All rights reserved.
//

import UIKit

class SubmitClassController: UIViewController {
    
    var classSchedule:ClassSchedule?
    var dayOfWeek:String?
    var classSpan:String?
    
    @IBOutlet weak var timeOfDayLabel: UILabel!
    @IBOutlet weak var dayOfWeekLabel: UILabel!
    @IBOutlet weak var submitButton: UIButton!
    @IBOutlet weak var messageTextView: UITextView!
    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var nameTextField: UITextField!

    let NAME_KEY:String = "USER"
    let EMAIL_KEY:String = "EMAIL"
    
    override func viewDidLoad() {

        let defaults = NSUserDefaults.standardUserDefaults()
        
        if defaults.objectForKey(NAME_KEY) != nil {
            nameTextField.text = (defaults.objectForKey(NAME_KEY) as! String)
        }
        if defaults.objectForKey(EMAIL_KEY) != nil {
            emailTextField.text = (defaults.objectForKey(EMAIL_KEY) as! String)
        }

        
        messageTextView.text = ""
        
        
        messageTextView.layer.borderColor = UIColor(red: 0.9, green: 0.9, blue: 0.9, alpha: 1).CGColor
        messageTextView.layer.borderWidth = 1.0
        messageTextView.layer.cornerRadius = 5
        
        dayOfWeekLabel.text = self.dayOfWeek
        timeOfDayLabel.text = self.classSpan
        
    }

    
    @IBAction func onSubmit(sender: UIButton) {
        
        let defaults = NSUserDefaults.standardUserDefaults()
        defaults.setObject(nameTextField.text, forKey: self.NAME_KEY)
        defaults.setObject(emailTextField.text, forKey: self.EMAIL_KEY)
        defaults.synchronize()
        
        self.navigationController?.popToRootViewControllerAnimated(true)
        
    }
    
    
}