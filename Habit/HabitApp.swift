//
//  HabitApp.swift
//  Habit
//
//  Created by Leonardo Lamoia on 24/01/24.
//

import SwiftUI

@main
struct HabitApp: App {
    var body: some Scene {
        WindowGroup {
            SplashView(viewModel: SplashViewModel())
        }
    }
}
