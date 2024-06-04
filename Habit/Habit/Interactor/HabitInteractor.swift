//
//  HabitInteractor.swift
//  Habit
//
//  Created by Leonardo Lamoia on 03/06/24.
//

import Foundation
import Combine



class HabitInteractor {
    
    private let remote: HabitRemoteDataSource = .shared
}

extension HabitInteractor {
    
    func fetchHabits() -> Future<[HabitResponse], AppError> {
        return remote.fetchHabits()
    }
    
}
