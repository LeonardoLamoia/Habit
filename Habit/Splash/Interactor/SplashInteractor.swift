//
//  SplashInteractor.swift
//  Habit
//
//  Created by Leonardo Lamoia on 30/03/24.
//

import Foundation
import Combine



class SplashInteractor {
    
    //private let remote: SignInRemoteDataSource = .shared
    private let local: LocalDataSource = .shared
}

extension SplashInteractor {
    
    func fetchAuth() -> Future <UserAuth?, Never> {
        return local.getUserAuth()
    }

}
