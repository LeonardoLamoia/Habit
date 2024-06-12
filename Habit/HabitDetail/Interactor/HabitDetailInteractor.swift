//
//  HabitDetailInteractor.swift
//  Habit
//
//  Created by Leonardo Lamoia on 11/06/24.
//

import Foundation
import Combine



class HabitDetailInteractor {
    
    private let remote: HabitDetailRemoteDataSource = .shared
}

extension HabitDetailInteractor {
    
    func save(habitId: Int, habitValueRequest request: HabitValueRequest) -> Future<Bool, AppError> {
        return remote.save(habitId: habitId, request: request)
    }
}
