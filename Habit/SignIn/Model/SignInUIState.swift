//
//  SignInUIState.swift
//  Habit
//
//  Created by Leonardo Lamoia on 28/02/24.
//

import Foundation


enum SignInUIState: Equatable {
    case none
    case loading
    case goToHomeScreen
    case error(String)
}
