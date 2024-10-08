//
//  HomeViewRouter.swift
//  Habit
//
//  Created by Leonardo Lamoia on 01/04/24.
//

import Foundation
import SwiftUI


enum HomeViewRouter {
    
    static func makeHabitView(viewModel: HabitViewModel) -> some View {
        return HabitView(viewModel: viewModel)
    }
    
    static func makeProfileView(viewModel: ProfileViewModel) -> some View {
        return ProfileView(viewModel: viewModel)
    }
}
