//
//  Date+Extension.swift
//  Habit
//
//  Created by Leonardo Lamoia on 04/06/24.
//

import Foundation

extension Date {
    
    func toString(destPattern dest: String) -> String {
        let formatter = DateFormatter()
        formatter.locale = Locale(identifier: "en_US_POSIX")
        formatter.dateFormat = dest
        
        return formatter.string(from: self)
    }
}
