//
//  HabitDetailView.swift
//  Habit
//
//  Created by Leonardo Lamoia on 10/06/24.
//

import SwiftUI

struct HabitDetailView: View {
    
    @ObservedObject var viewModel: HabitDetailViewModel
    
    init(viewModel: HabitDetailViewModel) {
        self.viewModel = viewModel
    }
    
    var body: some View {
        ScrollView(showsIndicators: false) {
            
            VStack(alignment: .center, spacing: 12) {
                Text(viewModel.name)
                    .foregroundColor(Color.orange)
                    .font(.title.bold())
                
                Text("Unidade: \(viewModel.label)")
                    
            }
            
            VStack {
                TextField("Escreva aqui o valor conquistado", text: $viewModel.value)
                    .multilineTextAlignment(.center)
                    .textFieldStyle(PlainTextFieldStyle())
                    .keyboardType(.numberPad)
                
                Divider()
                    .frame(height: 1)
                    .background(Color.gray)
            }.padding(.horizontal, 32)
            
            Text("Os registros devem ser feitos em até 24h. \n Hábitos se constroem todos os dias :)")
            
            LoadingButtonView(action: {
                
            }, text: "Salvar",
                              showProgress: self.viewModel.uiState == .loading, disabled: self.viewModel.value.isEmpty)
            .padding(.horizontal, 16)
            .padding(.vertical, 8)
            
            Button("Cancelar") {
                //dismiss / pop exit
            }
            .modifier(ButtonStyle())
            .padding(.horizontal, 16)
            
            Spacer()
        }
        .padding(.horizontal, 8)
        .padding(.top, 32)
    }
}


struct HabitDetailView_Previews: PreviewProvider {
    static var previews: some View {
        ForEach(ColorScheme.allCases, id: \.self) {
            HabitDetailView(viewModel: HabitDetailViewModel(id: 1, name: "Estudar inglês", label: "horas"))
                .previewDevice("iPhone 12")
                .preferredColorScheme($0)
        }
    }
}