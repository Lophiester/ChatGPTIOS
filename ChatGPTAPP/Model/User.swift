//
//  User.swift
//  ChatGPTAPP
//
//  Created by Charles Yamamoto on 2024/01/16.
//

import Foundation

struct User: Identifiable, Codable {
    let id : String
    let fullname : String
    let email : String
}
