//
//  UserSettings.swift
//  StateAnaDataFlow
//
//  Created by Alexey Efimov on 14.06.2023.
//

import Foundation

final class UserSettings: ObservableObject {
    @Published var user: User
    
    init() {
        user = StorageManager().getUser()
    }
    
    func checkName(name: String) -> Bool {
         name.count > 2
    }
    
    func checkLogIn() -> Bool {
        user.isLogIn
    }
    
}
