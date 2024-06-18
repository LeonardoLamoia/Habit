//
//  Profileview.swift
//  Habit
//
//  Created by Leonardo Lamoia on 17/06/24.
//

import SwiftUI

struct ProfileView: View {
    
    @State var fullName = ""
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
                            TextField("Digite o nome", text: $fullName)
                                .keyboardType(.alphabet)
                                .multilineTextAlignment(.trailing)
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
                            TextField("Digite o seu celular", text: $phone)
                                .keyboardType(.numberPad)
                                .multilineTextAlignment(.trailing)
                        }
                        
                        HStack {
                            Text("Data de nascimento")
                            Spacer()
                            TextField("Digite a sua data de nascimento", text: $birthday)
                                .multilineTextAlignment(.trailing)
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
    ProfileView()
}
