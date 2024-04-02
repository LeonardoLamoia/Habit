//
//  HomeViewModel.swift
//  Habit
//
//  Created by Leonardo Lamoia on 01/03/24.
//

import SwiftUI


class HomeViewModel: ObservableObject {
    
}


extension HomeViewModel {
    func habitView() -> some View {
        return HomeViewRouter.makeHabitView()
    }
}
