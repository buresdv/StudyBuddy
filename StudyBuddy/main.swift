//
//  main.swift
//  StudyBuddy
//
//  Created by David Bureš on 28.05.2022.
//

import Foundation
import DavidFoundation

enum MainControls {
    case log
    case predict
    case quit
}

printHelp()

var keepProgramAlive: Bool = true
var currentScreen: String = ""

var hasActiveLoggingSession: Bool = false

var currentActiveLogger = LogItem(numberOfPages: 0, started: nil)

while(keepProgramAlive) {
    
    if let selectedOption: String = readLine() {
        switch selectedOption {
        case "l":
            clearConsole()
            
            if !hasActiveLoggingSession {
                
                currentActiveLogger.started = convertDateComponentToDate(getCurrentTimeAsComponents())
                
                writeToConsole(message: "Started tracking!", format: .success, messageColor: .magenta)
                hasActiveLoggingSession = true
            } else {
                
                currentActiveLogger.finished = convertDateComponentToDate(getCurrentTimeAsComponents())
                
                writeToConsole(message: "Stopped tracking!", format: .success, messageColor: .magenta)
                
                printHelp("That took \(getIntervalBetweenDates(from: currentActiveLogger.started!, to: currentActiveLogger.finished!))")
                
                hasActiveLoggingSession = false
            }
            
            writeToConsole(message: formatDateForPrinting(originalDate: getCurrentTimeAsComponents()), format: .helper, messageColor: .cyan)
            
            
        case "p":
            clearConsole()
            
            writeToConsole(message: "How many pages do you want to study?", format: .systemInfo, messageColor: .magenta)
            
        case "q":
            writeToConsole(message: "Selected Quit, dying", format: .systemInfo, messageColor: .magenta)
            stopProgram()
            
        default:
            printHelp("Unexpected option selected!")
            
        }
    } else {
        printHelp("You didn't select any option.")
    }
    
}
