//
//  SignInViewModel.swift
//  Habit
//
//  Created by Leonardo Lamoia on 27/02/24.
//

import SwiftUI


class SignInViewModel: ObservableObject {
    
    
    @Published var uiState: SignInUIState = .none
    
    func login(email: String, password: String) {
        self.uiState = .loading
        
        DispatchQueue.main.asyncAfter(deadline: .now() + 1) {
            self.uiState = .goToHomeScreen
        }
    }
    
}

extension SignInViewModel {
    func homeView() -> some View {
        return SignInViewRouter.makeHomeView()
    }
    
    func signUpView() -> some View {
        return SignInViewRouter.makeSignUpView()
    }
}

