//
//  RootView.swift
//  ChatGPTAPP
//
//  Created by Charles Yamamoto on 2024/01/16.
//

import SwiftUI

struct RootView: View {
  var viewModel = AuthViewModel()
    var body: some View {
        Group{
            if viewModel.userSession != nil{
              TempView()
            } else{
                LoginView()
            }
        }
    }
}



#Preview {
    RootView()
}
