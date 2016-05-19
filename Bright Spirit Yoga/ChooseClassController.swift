//
//  ClassSignupController.swift
//  Bright Spirit Yoga
//
//  Created by Brad Balmer on 5/17/16.
//  Copyright © 2016 Remlab. All rights reserved.
//

import UIKit


class ChooseClassController: UIViewController, UITableViewDelegate, UITableViewDataSource{

    @IBOutlet weak var tableView: UITableView!
    
    var classes:Array<ClassSchedule> = []
    var selectedClass:ClassSchedule?
    
    let submitSegue: String = "submitClassSegue"
    
    override func viewDidLoad() {
        classes.append(ClassSchedule(day: "Monday", startTime: "07:00", startMeridian: "PM", endTime: "08:15", endMeridian: "PM"))
        classes.append(ClassSchedule(day: "Wednesday", startTime: "06:30", startMeridian: "AM", endTime: "07:30", endMeridian: "AM"))
        classes.append(ClassSchedule(day: "Friday", startTime: "09:30", startMeridian: "AM", endTime: "10:45", endMeridian: "AM"))
        classes.append(ClassSchedule(day: "Saturday", startTime: "08:30", startMeridian: "AM", endTime: "09:45", endMeridian: "AM"))
        
        
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return classes.count
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCellWithIdentifier("class_schedule")! as UITableViewCell

        let classSchedule = classes[indexPath.row]
        
        cell.textLabel?.text = classSchedule.dayOfWeek
        cell.detailTextLabel?.text = classSchedule.getClassSpan()
        
        return cell
    }
    
    
    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        selectedClass = classes[indexPath.row]
        tableView.deselectRowAtIndexPath(indexPath, animated: false)
        
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if segue.destinationViewController is SubmitClassController {
            let destinationController = segue.destinationViewController as! SubmitClassController
            
            let cell = sender as! UITableViewCell
            destinationController.dayOfWeek = cell.textLabel?.text
            destinationController.classSpan = cell.detailTextLabel?.text
        }
    }
    
    
}