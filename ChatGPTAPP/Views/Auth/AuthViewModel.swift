//
//  AuthViewModel.swift
//  ChatGPTAPP
//
//  Created by Charles Yamamoto on 2024/01/16.
//

import Foundation
import Observation
import Firebase
import FirebaseFirestoreSwift
import FirebaseAuth

@Observable class AuthViewModel {
    
    var userSession : FirebaseAuth.User?
    var currentUser : User?
    
    func signIn (withEmail: String, password: String) async throws {
        print("signIn...")
    }
    
    func createUser(fullname: String, withEmail: String, password: String) async throws -> AuthDataResult {
        do {
             let result = try await Auth.auth().createUser(withEmail: withEmail, password: password)
            userSession = result.user
            let user = User(id: result.user.uid, fullname: fullname, email: withEmail)
            
            // Encode user data
            let encoder = try Firestore.Encoder().encode(user)
            
            // Save user data to Firestore
            try await Firestore.firestore().collection("users").document(user.id).setData(encoder)
            
            return result // Return the AuthDataResult
        } catch {
            print("Failed to create user with error: \(error.localizedDescription)")
            throw error
        }
    }
    
    func signOut() {
    }
    func deleteAccount(){
        
    }
    
    func fetchUser() async{}
}
