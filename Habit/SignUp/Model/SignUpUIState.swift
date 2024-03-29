//
//  SignUpUIState.swift
//  Habit
//
//  Created by Leonardo Lamoia on 03/03/24.
//

import SwiftUI


enum SignUpUIState: Equatable {
    case none
    case loading
    case success
    case error(String)
}
