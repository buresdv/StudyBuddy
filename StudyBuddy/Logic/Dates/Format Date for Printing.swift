//
//  Format Date for Printing.swift
//  StudyBuddy
//
//  Created by David Bureš on 30.05.2022.
//

import Foundation

func formatDateForPrinting(originalDate: DateComponents) -> String {
    let date = convertDateComponentToDate(originalDate)
    
    let formatter = DateFormatter()
    formatter.dateStyle = .medium
    formatter.timeStyle = .medium
    
    return formatter.string(from: date)
}
