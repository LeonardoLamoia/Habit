//
//  String+Extension.swift
//  Habit
//
//  Created by Leonardo Lamoia on 04/03/24.
//

import SwiftUI


extension String {
    func isEmail() -> Bool {
        let regEx = "[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,64}"
        
        return NSPredicate(format: "SELF MATCHES %@", regEx).evaluate(with: self)
    }
}
