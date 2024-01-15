//
//  AuthViewModel.swift
//  ChatGPTAPP
//
//  Created by Charles Yamamoto on 2024/01/15.
//

import Foundation
import Observation

@Observable class AuthViewModel {
    var emailText : String = ""
    var passwordText : String = ""
    var isLoading : Bool = false
    var isPasswordVisible : Bool = false
    var isUserExists : Bool = false
    let authService = AuthService()
    
    func authenticate (){
        isLoading = true
        Task{
            do{
                if isPasswordVisible{
                    let result = try await authService.login(email: emailText, password: passwordText, userExists: isUserExists)
                    await MainActor.run {
                        guard let result = result else {return}
                    }
                } else {
                   isUserExists = try await authService.checkUserExists(email: emailText)
                    isPasswordVisible = true
                }
                isLoading = false
            }catch{
                print(error)
                isLoading = false
            }
        }
    }
}
