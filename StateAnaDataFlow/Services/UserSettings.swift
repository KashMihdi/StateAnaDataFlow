//
//  UserSettings.swift
//  StateAnaDataFlow
//
//  Created by Alexey Efimov on 14.06.2023.
//

import Foundation

final class UserSettings: ObservableObject {
    @Published var user: User
    lazy var isLoggedIn = user.isLogIn
    lazy var name = user.name
    
    init() {
        user = StorageManager().getUser()
    }
    
    func checkCorrectName(name: String) -> Bool {
         name.count > 2
    }
}
