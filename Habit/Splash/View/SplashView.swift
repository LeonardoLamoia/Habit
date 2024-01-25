//
//  SplashView.swift
//  Habit
//
//  Created by Leonardo Lamoia on 24/01/24.
//

import SwiftUI

struct SplashView: View {
    
    @State var state: SplashUIState = .goToSignInScreen
    
    var body: some View {
        switch state {
        case .loading:
           loadingView()
        case .goToSignInScreen:
            Text("carregar tela de login")
        case .goToHomeScreen:
            Text("carregar tela principal")
        case .error(let msg):
            Text("mostrar erro: \(msg)")
        }
    }
}

extension SplashView {
    func loadingView() -> some View {
        ZStack {
            Image("logo")
                .resizable()
                .scaledToFit()
                .frame(maxWidth: .infinity, maxHeight: .infinity)
                .padding(20)
                .background(Color.white)
                .ignoresSafeArea()
        }
    }
}

#Preview {
    SplashView(state: .loading)
}
