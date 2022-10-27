//
//  PaginatedResult.swift
//  
//
//  Created by Robert Sandru on 27.10.2022.
//

import Foundation

struct PaginatedResult<T: Decodable>: Decodable {
    
    var count: Int
    var next: String
    var previous: String
    var results: [T]
}
