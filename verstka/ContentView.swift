//
//  ContentView.swift
//  verstka
//
//  Created by Akerke on 06.10.2023.
//

import SwiftUI

struct ContentView: View {
    @State private var showAlert = false
    var body: some View {
        NavigationView {
            VStack{
                
            }
            .navigationBarTitle("ColorMatch", displayMode: .inline)
            .navigationBarItems(
                trailing: Button(action: {
                    self.showAlert.toggle()
                }) {
                    Text("Рестарт")
                }
            )
            .alert(isPresented: $showAlert) {
                Alert(title: Text("Вы уверены?"), message: Text("Начать игру заново"), primaryButton: .destructive(Text("Да")) {
                    // Логика рестарта
                }, secondaryButton: .cancel())
            }
        }
    }
        struct ContentView_Previews: PreviewProvider {
            static var previews: some View {
                ContentView()
            }
        }
    }

