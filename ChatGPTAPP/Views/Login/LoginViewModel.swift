//
//  AuthViewModel.swift
//  ChatGPTAPP
//
//  Created by Charles Yamamoto on 2024/01/15.
//

import Foundation
import Observation

@Observable class LoginViewModel {
    var emailText : String = ""
    var passwordText : String = ""
    var isLoading : Bool = false

}
