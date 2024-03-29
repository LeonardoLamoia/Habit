//
//  SignUpViewRouter.swift
//  Habit
//
//  Created by Leonardo Lamoia on 03/03/24.
//

import SwiftUI


enum SignUpViewRouter {
    
    static func makeHomeView() -> some View {
        let viewModel = HomeViewModel()
        return HomeView(viewModel: viewModel)
    }
}
