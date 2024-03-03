//
//  Gender.swift
//  Habit
//
//  Created by Leonardo Lamoia on 03/03/24.
//

import SwiftUI


enum Gender: String, CaseIterable, Identifiable {
    case male = "Masculino"
    case femalte = "Feminino"
    
    var id: String {
        self.rawValue
    }
}
