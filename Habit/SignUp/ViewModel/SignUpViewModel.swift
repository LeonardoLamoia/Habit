//
//  SignUpViewModel.swift
//  Habit
//
//  Created by Leonardo Lamoia on 03/03/24.
//

import SwiftUI
import Combine


class SignUpViewModel: ObservableObject {
    
    var publisher: PassthroughSubject<Bool, Never>!
    
    @Published var uiState: SignUpUIState = .none
    
    func signUp() {
        self.uiState = .loading
        
        DispatchQueue.main.asyncAfter(deadline: .now() + 1) {
//            self.uiState = .error("Usuário já existente")
            self.uiState = .sucess
            self.publisher.send(true)
        }
    }
    
}

extension SignUpViewModel {
    func homeView() -> some View {
        return SignUpViewRouter.makeHomeView()
    }
}
