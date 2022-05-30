//
//  Help.swift
//  StudyBuddy
//
//  Created by David Bureš on 29.05.2022.
//

import Foundation
import DavidFoundation

/// Prints the normal help page
func printHelp(_ statusLine: String? = nil) -> Void {
    clearConsole()
    
    if statusLine != nil {
        writeToConsole(message: statusLine!, format: .none, messageColor: .inverted)
    }
    
    writeToConsole(message: "Hello, try these:", format: .helper, forceNewline: .before)
    writeToConsole(message: "[l] to log last session", format: .systemInfo, messageColor: .yellow)
    writeToConsole(message: "[p] to predict how long a session will take", format: .systemInfo, messageColor: .yellow)
    writeToConsole(message: "[q] to quit", format: .systemInfo, messageColor: .yellow)
}
