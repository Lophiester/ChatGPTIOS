//
//  AuthService.swift
//  ChatGPTAPP
//
//  Created by Charles Yamamoto on 2024/01/15.
//

import SwiftUI
import Firebase



class AuthService {
    
    let db = Firestore.firestore()
    
    func checkUserExists(email : String) async throws -> Bool {
        let snapshot = db.collection("users").whereField("email", isEqualTo: email).count
        let count = try await snapshot.getAggregation(source: .server).count
        return Int(truncating: count) > 0
    }
    func login (email: String, password: String, userExists: Bool) async throws -> AuthDataResult? {
        
        guard !password.isEmpty else {return nil}
        if userExists {
           return try await Auth.auth().signIn(withEmail: email, password: password)
        }
        return try await Auth.auth().createUser(withEmail: email, password: password)
    }
}
