//
//  HabitViewModel.swift
//  Habit
//
//  Created by Leonardo Lamoia on 01/04/24.
//

import Foundation


class HabitViewModel: ObservableObject {
    
    @Published var uiState: HabitUIState = .emptyList
    
    @Published var title = "Atenção"
    @Published var headline = "Fique ligado!"
    @Published var desc = "Você está atrasado nos hábitos"
    
}
