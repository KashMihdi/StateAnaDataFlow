//
//  StorageManager.swift
//  StateAnaDataFlow
//
//  Created by Kasharin Mikhail on 15.06.2023.
//

import SwiftUI

class StorageManager: ObservableObject {
    
    @AppStorage("username") var username = ""
    @AppStorage("isLoggedIn") var isLoggedIn = false
    
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
