//
//  RegistrationViewModel.swift
//  ChatGPTAPP
//
//  Created by Charles Yamamoto on 2024/01/16.
//

import Foundation
import Observation


@Observable class RegistrationViewModel {
    
    var emailText : String = ""
    var fullName : String = ""
    var passwordText : String = ""
    var passwordConfirmText : String = ""
    var isLoading : Bool = false
}
