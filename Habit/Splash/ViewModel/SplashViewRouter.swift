//
//  SplashViewRouter.swift
//  Habit
//
//  Created by Leonardo Lamoia on 27/02/24.
//

import SwiftUI


enum SplashViewRouter {
    
    static func  makeSignInView() -> some View {
        let viewModel = SignInViewModel(interactor: SignInInteractor())
        return SignInView(viewModel: viewModel)
    }
    
    static func makeHomeView() -> some View {
        let viewModel = HomeViewModel()
        return HomeView(viewModel: viewModel)
    }
}
