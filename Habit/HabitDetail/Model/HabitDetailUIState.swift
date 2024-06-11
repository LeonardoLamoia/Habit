//
//  HabitDetailUIState.swift
//  Habit
//
//  Created by Leonardo Lamoia on 10/06/24.
//

import Foundation


enum HabitDetailUIState: Equatable {
    case none
    case loading
    case success
    case error(String)
}


