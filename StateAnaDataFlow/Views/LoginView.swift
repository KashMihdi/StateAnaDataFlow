//
//  LoginView.swift
//  StateAnaDataFlow
//
//  Created by Alexey Efimov on 14.06.2023.
//

import SwiftUI

struct LoginView: View {
    @State private var name = ""
    @EnvironmentObject private var user: UserSettings
    @EnvironmentObject private var storage: StorageManager
    var body: some View {
        VStack {
            HStack {
                TextField("Enter your name...", text: $name)
                    .multilineTextAlignment(.center)
                
                Text(name.count.formatted())
                    .foregroundColor(
                        user.checkCorrectName(name: name) ? .red : .green
                    )
                    .padding(.all, 4)
                    .overlay {
                        RoundedRectangle(cornerRadius: 4)
                            .stroke(.black, lineWidth: 1)
                    }
            }
            .padding(.horizontal, 30)
            
            Button(action: login) {
                HStack {
                    Image(systemName: "checkmark.circle")
                    Text("OK")
                }
            }
            .disabled(user.checkCorrectName(name: name))
        }
    }
    
    private func login() {
        if !name.isEmpty {
            user.name = name
            user.isLoggedIn.toggle()
            storage.createUser(name: name)
        }
    }
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}
