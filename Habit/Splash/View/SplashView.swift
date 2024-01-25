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
            Text("Loading")
        case .goToSignInScreen:
            Text("carregar tela de login")
        case .goToHomeScreen:
            Text("carregar tela principal")
        case .error(let msg):
            Text("mostrar erro: \(msg)")
        }
    }
}

#Preview {
    SplashView(state: .error("erro no servidor. Tente mais tarde!"))
}
