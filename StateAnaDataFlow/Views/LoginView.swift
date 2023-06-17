//
//  LoginView.swift
//  StateAnaDataFlow
//
//  Created by Alexey Efimov on 14.06.2023.
//

import SwiftUI

struct LoginView: View {
    @EnvironmentObject private var user: UserSettings
    @EnvironmentObject private var storage: StorageManager
    var body: some View {
        VStack {
            HStack {
                TextField("Enter your name...", text: $storage.username)
                    .multilineTextAlignment(.center)
                
                Text(storage.username.count.formatted())
                    .foregroundColor(
                        user.checkName(name: storage.username) ? .green : .red
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
            .disabled(!user.checkName(name: storage.username))
        }
    }
    
    private func login() {
        storage.createUser(name: storage.username)
    }
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}
