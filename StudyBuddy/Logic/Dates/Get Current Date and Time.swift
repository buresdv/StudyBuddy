//
//  Get Current Date and Time.swift
//  StudyBuddy
//
//  Created by David Bureš on 30.05.2022.
//

import Foundation

func getCurrentTimeAsComponents() -> DateComponents {
    let currentDateTime = Date()
    let userCalendar = Calendar.current
    
    let requestedComponents: Set<Calendar.Component> = [
        .year,
        .month,
        .day,
        .hour,
        .minute
    ]
    
    let dateTimeComponents = userCalendar.dateComponents(requestedComponents, from: currentDateTime)
    
    return dateTimeComponents
}
