//
//  SignUpInteractor.swift
//  Habit
//
//  Created by Leonardo Lamoia on 29/03/24.
//

import Foundation
import Combine


class SignUpInteractor {
    
    private let remoteSignUp: SignUpRemoteDataSource = .shared
    private let remoteSignIn: SignInRemoteDataSource = .shared

}


extension SignUpInteractor {
    
    func postUser(signUpRequest request: SignUpRequest) -> Future<Bool, AppError> {
        return remoteSignUp.postUser(request: request)
    }
    
    func login(signInRequest request: SignInRequest) -> Future<SignInResponse, AppError> {
        return remoteSignIn.login(request: request)
    }
}
 
