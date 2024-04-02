//
//  HomeViewRouter.swift
//  Habit
//
//  Created by Leonardo Lamoia on 01/04/24.
//

import Foundation
import SwiftUI


enum HomeViewRouter {
    
    static func makeHabitView() -> some View {
        let viewModel = HabitViewModel()
        return HabitView(viewModel: viewModel)
    }
}
