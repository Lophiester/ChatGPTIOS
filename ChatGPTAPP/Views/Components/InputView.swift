//
//  InputView.swift
//  ChatGPTAPP
//
//  Created by Charles Yamamoto on 2024/01/16.
//

import SwiftUI

struct InputView: View {
    @Binding var text : String
    let placeholder : String
    var isSecureField : Bool = false
    var body: some View {
        VStack{
            if isSecureField {
                SecureField(placeholder, text: $text)
            } else {
                TextField(placeholder, text: $text)
            }
        }.padding()
            .background(RoundedRectangle(cornerRadius: 10).stroke(Color.blue, lineWidth: 1))
            .padding(.horizontal, 20)
            .textInputAutocapitalization(.never)
    }
}

#Preview {
    InputView( text: .constant(""), placeholder: "name@example.com")
}
