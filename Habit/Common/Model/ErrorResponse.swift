//
//  ErrorResponse.swift
//  Habit
//
//  Created by Leonardo Lamoia on 12/03/24.
//

import Foundation


struct ErrorResponse :Decodable {
    let detail: String
   
    enum CodingKeys: String, CodingKey {
        case detail
        
    }
}
