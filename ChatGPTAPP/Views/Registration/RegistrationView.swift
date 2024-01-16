//
//  RegistrationView.swift
//  ChatGPTAPP
//
//  Created by Charles Yamamoto on 2024/01/16.
//

import SwiftUI

struct RegistrationView: View {
    @State var viewModel = RegistrationViewModel()
    @State var authViewModel = AuthViewModel()
    
    var body: some View {
        NavigationStack{
            Spacer()
            Text("Join Our Community")
                .font(.largeTitle)
                .fontWeight(.bold)
                .foregroundStyle(.blue)
            VStack(spacing: 20){
                InputView(text: $viewModel.fullName, placeholder: "Enter your Full Name")
                InputView(text: $viewModel.emailText, placeholder: "name@example.com")
                InputView(text: $viewModel.passwordText, placeholder: "Enter your password", isSecureField: true)
                InputView(text: $viewModel.passwordConfirmText, placeholder: "Confirm your password", isSecureField: true)
                Button(action: {
                    Task{
                        try await authViewModel.createUser(
                            fullname: viewModel.fullName,
                            withEmail: viewModel.emailText,
                            password: viewModel.passwordText)
                    }
                }) {
                    Text("Get Started")
                        .font(.headline)
                        .foregroundStyle(.white)
                        .padding()
                        .frame(width: 200, height: 50)
                        .background(Color.blue) // Escolha a cor desejada
                        .cornerRadius(10)
                }
                .padding(.top, 20)
            }
            .padding()
            Spacer()
            NavigationLink {
                LoginView()
            } label: {
                HStack(spacing: 3){
                    Text("Already have an account ?")
                    Text("SignIn")
                        .bold()
                }
                .foregroundStyle(.blue)
                .font(.system(size: 14))
            }
        }
    }
}

#Preview {
    RegistrationView()
}
