//
//  ProfileUIState.swift
//  Habit
//
//  Created by Leonardo Lamoia on 08/10/24.
//

import Foundation

enum ProfileUIState: Equatable {
  case none
  case loading
  case fetchSuccess
  case fetchError(String)
    
    case updateLoading
    case updateSuccess
    case updateError(String)
}
