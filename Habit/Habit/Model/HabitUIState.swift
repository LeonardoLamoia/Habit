//
//  HabitUIState.swift
//  Habit
//
//  Created by Leonardo Lamoia on 01/04/24.
//

import Foundation


enum HabitUIState: Equatable {
    
    case loading
    case emptyList
    case fullList
    case error(String)
}
