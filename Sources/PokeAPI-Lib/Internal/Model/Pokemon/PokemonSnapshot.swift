//
//  PokemonSnapshot.swift
//  
//
//  Created by Robert Sandru on 27.10.2022.
//

import Foundation

public struct PokemonSnapshot: Decodable {
    
    public var name: String
    public var url: String
}

extension PokemonSnapshot: Hashable {
    
    public func hash(into hasher: inout Hasher) {
        hasher.combine(name)
        hasher.combine(url)
    }
}
