//
//  Stop Program.swift
//  StudyBuddy
//
//  Created by David Bureš on 29.05.2022.
//

import Foundation
import DavidFoundation

func stopProgram() -> Void {
    writeToConsole(message: "Going to die", format: .systemInfo, messageColor: .magenta)
    exit(1)
}
