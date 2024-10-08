//
//  Profileview.swift
//  Habit
//
//  Created by Leonardo Lamoia on 17/06/24.
//

import SwiftUI

struct ProfileView: View {
    
    @ObservedObject var viewModel: ProfileViewModel
    
    @State var email = "leonardotcinf@gmail.com"
    @State var cpf = "129.353.564-59"
    @State var phone = "(32) 99821-9123"
    @State var birthday = "16/02/1997"
    @State var selectedGender: Gender? = .male
    
    var body: some View {
        NavigationView {
            
            VStack {
                
                Form {
                    
                    Section(header: Text("Dados Cadastrais")) {
                        HStack {
                            Text("Nome")
                            Spacer()
                            TextField("Digite o nome", text: $viewModel.fullNameValidation.value)
                                .keyboardType(.alphabet)
                                .multilineTextAlignment(.trailing)
                        }
                        
                        if viewModel.fullNameValidation.failure {
                            Text("Nome deve ter mais de 3 caracteres")
                                .foregroundColor(.red)
                        }
                        
                        
                        HStack {
                            Text("E-mail")
                            Spacer()
                            TextField("", text: $email)
                                .disabled(true)
                                .foregroundColor(Color.gray)
                                .multilineTextAlignment(.trailing)
                        }
                        
                        HStack {
                            Text("CPF")
                            Spacer()
                            TextField("", text: $cpf)
                                .disabled(true)
                                .foregroundColor(Color.gray)
                                .multilineTextAlignment(.trailing)
                        }
                        
                        HStack {
                            Text("Celular")
                            Spacer()
                            TextField("Digite o seu celular", text: $viewModel.phoneValidation.value)
                                .keyboardType(.numberPad)
                                .multilineTextAlignment(.trailing)
                        }
                        
                        if viewModel.phoneValidation.failure {
                            Text("Entre com o DDD + 8 ou 9 digitos")
                                .foregroundColor(.red)
                        }
                        
                        HStack {
                            Text("Data de nascimento")
                            Spacer()
                            TextField("Digite a sua data de nascimento", text: $viewModel.birthdayValidation.value)
                                .multilineTextAlignment(.trailing)
                        }
                        
                        if viewModel.birthdayValidation.failure {
                            Text("Data deve ser dd/MM/yyyy")
                                .foregroundColor(.red)
                        }
                        
                        NavigationLink(
                            destination: GenderSelectorView(selectedGender: $selectedGender, genders: Gender.allCases, title: "Escolha o gênero"),
                            label: {
                                HStack {
                                    Text("Gênero")
                                    Spacer()
                                    Text(selectedGender?.rawValue ?? "")
                                }
                            })
                        
                    }
                    
                }
                
            }
            
            .navigationBarTitle(Text("Editar Perfil"), displayMode: .automatic)
        }
    }
}

#Preview {
    ProfileView(viewModel:  ProfileViewModel())
}
