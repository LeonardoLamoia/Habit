//
//  HabitCardViewRouter.swift
//  Habit
//
//  Created by Leonardo Lamoia on 11/06/24.
//

import Foundation
import SwiftUI


enum HabitCardViewRouter {
    static func makeHabitDetailView(id: Int, name: String, label: String) -> some View {
        let viewModel = HabitDetailViewModel(id: id, name: name, label: label, interactor: HabitDetailInteractor())
        return HabitDetailView(viewModel: viewModel)
    }
}
