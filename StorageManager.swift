//
//  StorageManager.swift
//  StateAnaDataFlow
//
//  Created by Kasharin Mikhail on 15.06.2023.
//

import SwiftUI

class StorageManager: ObservableObject {
    
    @AppStorage("username") var username: String = ""
    @AppStorage("isLoggedIn") var isLoggedIn: Bool = false
    
    // create
    func createUser(username: String) {
        self.username = username
        isLoggedIn = true
    }
    
    // read
    func getUser()  {
        
    }
    
    // delete
    func deleteUser() {
        username = ""
        isLoggedIn = false
    }
    
}
