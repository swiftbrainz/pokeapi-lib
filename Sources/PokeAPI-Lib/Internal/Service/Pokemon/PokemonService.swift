//
//  PokemonService.swift
//  
//
//  Created by Robert Sandru on 27.10.2022.
//

import Foundation

protocol PokemonService: Service {
    
    func getPokemonPaginated(offset: Int, limit: Int) async -> Result<PaginatedResult<[PokemonSnapshot]>, Error>
    func getPokemon(name: String)
}
