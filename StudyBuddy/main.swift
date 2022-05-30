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

while(keepProgramAlive) {
    
    if let selectedOption: String = readLine() {
        switch selectedOption {
        case "l":
            writeToConsole(message: "Selected Log", format: .systemInfo, messageColor: .magenta)
            writeToConsole(message: formatDateForPrinting(originalDate: getCurrentTimeAsComponents()), format: .helper, messageColor: .cyan)
        case "p":
            writeToConsole(message: "Selected Predict", format: .systemInfo, messageColor: .magenta)
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
