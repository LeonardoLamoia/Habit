//
//  SignInErrorResponse.swift
//  Habit
//
//  Created by Leonardo Lamoia on 23/03/24.
//

import Foundation


struct SignInErrorResponse: Decodable {
    
    let detail: SignInDetailErrorResponse
    
    enum CodingKeys: String, CodingKey {
        case detail
    }
}

struct SignInDetailErrorResponse: Decodable {
    
    let message: String
    
    enum CodingKeys: String, CodingKey {
        case message
    }
}

