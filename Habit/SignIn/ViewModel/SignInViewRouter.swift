//
//  SignInViewRouter.swift
//  Habit
//
//  Created by Leonardo Lamoia on 01/03/24.
//

import SwiftUI
import Combine

enum SignInViewRouter {
  
  static func makeHomeView() -> some View {
    let viewModel = HomeViewModel()
    return HomeView(viewModel: viewModel)
  }
  
  static func makeSignUpView(publisher: PassthroughSubject<Bool, Never>) -> some View {
    let viewModel = SignUpViewModel(interactor: SignUpInteractor())
    viewModel.publisher = publisher
    return SignUpView(viewModel: viewModel)
  }
  
}

