//
//  ProfileUIState.swift
//  Habit
//
//  Created by Leonardo Lamoia on 08/10/24.
//

import Foundation

enum ProfileUIState {
  case none
  case loading
  case fetchSuccess
  case fetchError(String)
}
