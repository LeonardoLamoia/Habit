//
//  SignUpResponse.swift
//  Habit
//
//  Created by Leonardo Lamoia on 11/03/24.
//

import Foundation


struct SignUpResponse: Decodable {
    let detail: String?
   
    
    
    enum CodingKeys: String, CodingKey {
        case detail
        
    }
}
