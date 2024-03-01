//
//  HomeView.swift
//  Habit
//
//  Created by Leonardo Lamoia on 01/03/24.
//

import SwiftUI


struct HomeView: View {
    
    @ObservedObject var viewModel: HomeViewModel
    
    var body: some View {
        Text("Ola Home Page")
    }
}

#Preview {
    let viewModel = HomeViewModel()
    let home = HomeView(viewModel: viewModel)
    return home
}
