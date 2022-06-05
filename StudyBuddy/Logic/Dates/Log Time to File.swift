//
//  Log Time to File.swift
//  StudyBuddy
//
//  Created by David Bureš on 31.05.2022.
//

import Foundation
import DavidFoundation

func saveLogToFile(logItem: LogItem) throws -> Void {
    let timeTaken: TimeInterval = getIntervalBetweenDates(from: logItem.started!, to: logItem.finished!)
    
    
}
