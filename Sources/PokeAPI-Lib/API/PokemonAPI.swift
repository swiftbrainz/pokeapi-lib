//
//  PokemonAPI.swift
//  
//
//  Created by Robert Sandru on 27.10.2022.
//

import Foundation

enum PokemonAPI : API {
    
    case root
    
    var path: String {
        switch self {
        case .root: return "/pokemon/"
        }
    }
}
