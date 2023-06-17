//
//  StorageManager.swift
//  StateAnaDataFlow
//
//  Created by Kasharin Mikhail on 15.06.2023.
//

import SwiftUI

final class StorageManager: ObservableObject {

     @AppStorage(wrappedValue: "", "name") var username: String
     @AppStorage(wrappedValue: false, "isLoggedIn") var isLoggedIn: Bool
    
    // create
    func createUser(name: String) {
        username = name
        isLoggedIn = true
    }
    
    // read
    func getUser() -> User  {
        User(name: username, isLogIn: isLoggedIn)
    }
    
    // delete
    func deleteUser()  {
        username = ""
        isLoggedIn = false
    }
}
