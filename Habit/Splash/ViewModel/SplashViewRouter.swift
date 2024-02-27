//
//  SplashViewRouter.swift
//  Habit
//
//  Created by Leonardo Lamoia on 27/02/24.
//

import SwiftUI


enum SplashViewRouter {
    
    static func  makeSignInView() -> some View {
        let viewModel = SignInViewModel()
        return SignInView(viewModel: viewModel)
    }
}
