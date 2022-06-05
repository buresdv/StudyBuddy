//
//  Log Item.swift
//  StudyBuddy
//
//  Created by David Bureš on 31.05.2022.
//

import Foundation
import DavidFoundation

struct LogItem: Identifiable, Codable {
    var id = UUID()
    
    var numberOfPages: Int
    
    var started: Date?
    var finished: Date?
}
