//
//  Date Component to Date.swift
//  StudyBuddy
//
//  Created by David Bureš on 31.05.2022.
//

import Foundation

func convertDateComponentToDate(_ dateAsComponents: DateComponents) -> Date {
    return NSCalendar.current.date(from: dateAsComponents)! as Date
}
