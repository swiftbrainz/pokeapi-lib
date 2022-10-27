//
//  API.swift
//  
//
//  Created by Robert Sandru on 27.10.2022.
//

import Foundation

enum HTTPMethod: String {
    
    case get = "GET"
}

protocol API {
    
    var basePath: URL { get }
    var path: String { get }
    var method: HTTPMethod { get }
}

extension API {
    
    var basePath: URL { return URL(string: "https://pokeapi.co/api/v2")! }
    
    var method: HTTPMethod { return .get }
}
