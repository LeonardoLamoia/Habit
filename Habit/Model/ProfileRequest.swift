//
//  ProfileRequest.swift
//  Habit
//
//  Created by Leonardo Lamoia on 09/10/24.
//

import Foundation

struct ProfileRequest: Encodable {

    let fullName: String
    let phone: String
    let birthday: String
    let gender: Int
    
    
    enum CodingKeys: String, CodingKey {
        case fullName = "name"
        case phone
        case birthday
        case gender
    }
}
