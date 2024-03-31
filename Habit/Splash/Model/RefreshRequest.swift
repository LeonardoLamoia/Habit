//
//  RefreshRequest.swift
//  Habit
//
//  Created by Leonardo Lamoia on 30/03/24.
//

import Foundation


struct RefreshRequest: Encodable {
    
    let token: String
    
    enum CodingKeys: String, CodingKey {
        case token = "refresh_token"
    }
}
