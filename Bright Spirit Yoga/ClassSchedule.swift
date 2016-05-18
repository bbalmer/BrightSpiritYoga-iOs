//
//  ClassSchedule.swift
//  Bright Spirit Yoga
//
//  Created by Brad Balmer on 5/17/16.
//  Copyright © 2016 Remlab. All rights reserved.
//

import UIKit

class ClassSchedule  {
    
    var dayOfWeek:String
    var startTime:String
    var startMeridian:String
    var endTime:String
    var endMeridian:String
    
    init(day: String, startTime: String, startMeridian: String, endTime: String, endMeridian: String) {
        self.dayOfWeek = day
        self.startTime = startTime
        self.startMeridian = startMeridian
        self.endTime = endTime
        self.endMeridian = endMeridian
        
    }
    
    
    func getClassSpan() -> String {
        
        let spanValue = self.startTime+" "+self.startMeridian+" - "+self.endTime+" "+self.endMeridian;
        return spanValue;
        
    }
    
}