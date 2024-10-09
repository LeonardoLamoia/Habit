//
//  ProfileInteractor.swift
//  Habit
//
//  Created by Leonardo Lamoia on 08/10/24.
//

import Foundation
import Combine

class ProfileInteractor {
    
    private let remote: ProfileRemoteDataSource = .shared
    
}


extension ProfileInteractor {
    
    func fetchUser() -> Future<ProfileResponse, AppError> {
        return remote.fetchUser()
    }
    
}
