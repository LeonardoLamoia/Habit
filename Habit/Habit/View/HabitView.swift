//
//  HabitView.swift
//  Habit
//
//  Created by Leonardo Lamoia on 01/04/24.
//

import Foundation
import SwiftUI


struct HabitView: View {
    
    @ObservedObject var viewModel: HabitViewModel
    
    var body: some View {
        ZStack {
            if case HabitUIState.loading = viewModel.uiState {
                progress
            } else {
                
                NavigationView {
                    
                    ScrollView(showsIndicators: false) {
                        VStack(spacing: 12) {
                            
                            if !viewModel.isCharts {
                                topContainer
                                
                                addButton
                            }
                            
                            
                            if case HabitUIState.emptyList = viewModel.uiState {
                                
                                Spacer(minLength: 60)
                                
                                VStack {
                                    Image(systemName: "exclamationmark.octagon.fill")
                                        .resizable()
                                        .scaledToFit()
                                        .frame(width: 24, height: 24, alignment: .center)
                                    
                                    Text("Nenhum hábito encontrado :(")
                                }
                                
                            } else if case HabitUIState.fullList(let rows) = viewModel.uiState {
                                
                                LazyVStack {
                                    
                                    ForEach(rows) { row in
                                        HabitCardView(isChart: viewModel.isCharts,
                                                      viewModel: row)
                                        
                                    }
                                    
                                }.padding(.horizontal, 14)
                                
                            } else if case HabitUIState.error(let msg) = viewModel.uiState {
                                Text("")
                                    .alert(isPresented: .constant(true)) {
                                        Alert(
                                            title: Text("Ops! \(msg)"),
                                            message: Text("Tentar novamente?"),
                                            primaryButton: .default(Text("Sim")) {
                                                viewModel.onAppear()
                                            },
                                            secondaryButton: .cancel()
                                        )
                                    }
                            }
                        }
                    }.navigationTitle("Meus Hábitos")
                }
            }
        }.onAppear {
            if !viewModel.opened {
                viewModel.onAppear()
            }
        }
    }
}

extension HabitView {
    var progress: some View {
        ProgressView()
    }
}

extension HabitView {
    var addButton: some View {
        NavigationLink(
            destination: Text("Tela de adicionar")
                .frame(maxWidth: .infinity, maxHeight: .infinity)) {
                    Label("Criar Hábito", systemImage: "plus.app")
                        .modifier(ButtonStyle())
                }
                .padding(.horizontal, 16)
    }
}

extension HabitView {
    var topContainer: some View {
        VStack(alignment: .center, spacing: 12) {
            Image(systemName: "exclamationmark.triangle")
                .resizable()
                .scaledToFit()
                .frame(width: 50, height: 50, alignment: .center)
            
            Text(viewModel.title)
                .font(Font.system(.title).bold())
                .foregroundStyle(Color.orange)
            
            Text(viewModel.headline)
                .font(Font.system(.title3).bold())
                .foregroundStyle(Color("textColor"))
            
            Text(viewModel.desc)
                .font(Font.system(.subheadline))
                .foregroundStyle(Color("textColor"))
        }
        .frame(maxWidth: .infinity)
        .padding(.vertical, 32)
        .overlay(
            RoundedRectangle(cornerRadius: 6)
                .stroke(Color.gray, lineWidth: 1)
        )
        .padding(.horizontal, 16)
        .padding(.top, 16)
    }
}


struct HabitView_Previews: PreviewProvider {
    static var previews: some View {
        ForEach(ColorScheme.allCases, id: \.self) {
            HomeViewRouter.makeHabitView(viewModel: HabitViewModel(isCharts: false, interactor: HabitInteractor()))
                .previewDevice("iPhone 12")
                .preferredColorScheme($0)
        }
    }
}
