//
//  PokemonService.swift
//  
//
//  Created by Robert Sandru on 27.10.2022.
//

import Foundation

protocol PokemonService: Service {
    
    func getPokemonPaginated(offset: Int, limit: Int, completion: @escaping (PaginatedResult<PokemonSnapshot>?, Error?) -> Void)
    func getPokemon(name: String, completion: @escaping () -> Void)
    
}
