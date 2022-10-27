//
//  PokemonRestService.swift
//  
//
//  Created by Robert Sandru on 27.10.2022.
//

import Foundation

class PokemonRestService: PokemonService {
    
    var http: Http
    
    init(http: Http) {
        self.http = http
    }
    
    func getPokemonPaginated(offset: Int, limit: Int, completion: @escaping (_ res: PaginatedResult<PokemonSnapshot>?, Error?) -> Void) {
        let api = PokemonAPI.paginated
        let url = api.basePath.appendingPathExtension(api.path)
        let params = [
            "offset": "\(offset)",
            "limit": "\(limit)"
        ]
        self.http.get(url: url,
                      parameters: params) {_,_,_ in 
            completion(nil, nil)
        }
    }
    
    func getPokemon(name: String, completion: @escaping () -> Void) {
        
    }
}
