//
//  UserSettings.swift
//  StateAnaDataFlow
//
//  Created by Alexey Efimov on 14.06.2023.
//

import Foundation

final class UserSettings: ObservableObject {
    @Published var isLoggedIn = false
    var name = ""
    
    init() {
        name = StorageManager().username
        isLoggedIn = StorageManager().isLoggedIn
    }
    
    func checkCorrectName(name: String) -> Bool {
        return name.count > 2 ? false : true
    }
}
