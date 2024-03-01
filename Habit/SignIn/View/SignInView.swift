//
//  SignInView.swift
//  Habit
//
//  Created by Leonardo Lamoia on 27/02/24.
//

import SwiftUI


struct SignInView: View {
    
    @ObservedObject var viewModel: SignInViewModel
    
    @State var email = ""
    @State var password = ""
    
    
    @State var action: Int? = 0
    
    @State var navigationHidden = true
    
    var body: some View {
        ZStack {
            if case SignInUIState.goToHomeScreen = viewModel.uiState {
                viewModel.homeView()
            } else {
                NavigationStack {
                    
                    ScrollView(showsIndicators: false){
                        
                        VStack(alignment: .center, spacing: 20) {
                            
                            Spacer(minLength: 40)
                            
                            VStack(alignment: .center, spacing: 8) {
                                Image("logo")
                                    .resizable()
                                    .scaledToFit()
                                    .padding(.horizontal, 48)
                                
                                Text("Login")
                                    .foregroundColor(.orange)
                                    .font(Font.system(.title).bold())
                                    .padding(.bottom, 8)
                                
                                emailField
                                
                                passwordFild
                                
                                enterButton
                                
                                registerLink
                                
                                Text("Copyright @YYY")
                                    .foregroundColor(Color.gray)
                                    .font(Font.system(size: 16).bold())
                                    .padding(.top, 16)
                            }
                        }
                        
                        if case SignInUIState.error(let value) = viewModel.uiState {
                            Text("")
                                .alert(isPresented: .constant(true)) {
                                    Alert(title: Text("Habit"), message: Text(value), dismissButton: .default(Text("Ok")) {
                                        
                                    })
                                }
                        }
                    }
                    .frame(maxWidth: .infinity, maxHeight: .infinity)
                    .padding(.horizontal, 32)
                    .background(Color.white)
                    .navigationBarTitle("Login", displayMode: .inline)
                    .navigationBarHidden(navigationHidden)
                }
                .onAppear {
                    self.navigationHidden = true
                }
                .onDisappear {
                    self.navigationHidden = false
                }
            }
        }
        
        
    }
}

extension SignInView {
    var emailField: some View {
        TextField("", text: $email)
            .border(Color.black)
    }
}

extension SignInView {
    var passwordFild: some View {
        SecureField("", text: $password)
            .border(Color.orange)
    }
}

extension SignInView {
    var enterButton: some View {
        Button("Entrar") {
            viewModel.login(email: email, password: password)
        }
    }
}

extension SignInView {
    var registerLink: some View {
        VStack {
            Text("Ainda não possui um login ativo?")
                .foregroundColor(.gray)
                .padding(.top, 48)
            
            ZStack {
                NavigationLink {
                    Text("Tela de cadastro")
                } label: {
                    Text("Realize seu Cadastro")
                }
            }
        }
    }
}

#Preview {
    let viewModel = SignInViewModel()
    let signIn = SignInView(viewModel: viewModel)
    return signIn
}

