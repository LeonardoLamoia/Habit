//
//  LocalDataSource.swift
//  Habit
//
//  Created by Leonardo Lamoia on 29/03/24.
//

import Foundation
import Combine


class LocalDataSource {
    
    static var shared: LocalDataSource = LocalDataSource()
    
    private init() {
        
    }
    
    private func saveValue(value: UserAuth) {
        UserDefaults.standard.set(try? PropertyListEncoder().encode(value), forKey: "user_key")
    }
    
    private func readValue(forKey key: String) -> UserAuth? {
        var userAuth: UserAuth?
        if let data = UserDefaults.standard.value(forKey: key) as? Data {
            userAuth = try? PropertyListDecoder().decode(UserAuth.self, from: data)
        }
        
        return userAuth
    }
    
}

extension LocalDataSource {
    
    func insertUserAuth(userAuth: UserAuth) {
        saveValue(value: userAuth)
    }
    
    func getUserAuth() -> Future<UserAuth?, Never> {
        let userAuth = readValue(forKey: "user_key")
        return Future { promise in
            promise(.success(userAuth))
        }
    }
    
    func enviarDados() {
        
    }
    
}
