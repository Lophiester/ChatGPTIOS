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
    var iPasswordVisible : Bool = false
    var isUserExists : Bool = false
    
    
}
