//
//  SignInViewRouter.swift
//  Habit
//
//  Created by Leonardo Lamoia on 01/03/24.
//

import SwiftUI


enum SignInViewRouter {
    
    static func makeHomeView() -> some View {
        let viewModel = HomeViewModel()
        return HomeView(viewModel: viewModel)
    }
    
    static func makeSignUpView() -> some View {
        return SignUpView()
    }
    
}
