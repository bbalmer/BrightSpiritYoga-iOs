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
    
    @IBOutlet weak var dayOfWeek: UILabel!
    override func viewDidLoad() {
        self.navigationItem.backBarButtonItem = UIBarButtonItem(title:"", style:.Plain, target:nil, action:nil)
    }
    
}