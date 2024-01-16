//
//  ContentView.swift
//  ChatGPTAPP
//
//  Created by Charles Yamamoto on 2024/01/15.
//

import SwiftUI

struct AuthView: View {
    
   @State var viewModel = AuthViewModel()
    
    var body: some View {
        VStack(spacing: 20) {
            Text("Welcome to ChatGPT iOS")
                .font(.largeTitle)
                .fontWeight(.bold)
                .foregroundColor(.blue) // Escolha a cor desejada
            
            InputView(text: $viewModel.emailText, placeholder: "name@exapmle.com")
            InputView(text: $viewModel.passwordText, placeholder: "password", isSecureField: true)
            
            Button(action: {
                // Adicione a lógica de login aqui
            }) {
                Text("Login")
                    .font(.headline)
                    .foregroundColor(.white)
                    .padding()
                    .frame(width: 200, height: 50)
                    .background(Color.blue) // Escolha a cor desejada
                    .cornerRadius(10)
            }
            .padding(.top, 20)
        }
        .padding()
    }
}

#Preview {
    AuthView()
}
