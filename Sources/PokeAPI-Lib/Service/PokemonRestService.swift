//
//  PokemonRestService.swift
//  
//
//  Created by Robert Sandru on 27.10.2022.
//

import Foundation

public class PokemonRestService: PokemonService {
    
    var http: Http
    
    enum PokemonRestServiceError: Error {
        case couldNotDecode(value: Any)
    }
    
    public init() {
        self.http = Http()
    }
    
    init(http: Http) {
        self.http = http
    }
    
    func getPokemonPaginated(offset: Int, limit: Int) async -> Result<PaginatedResult<[PokemonSnapshot]>, Error> {
        let api = PokemonAPI.paginated
        let url = api.basePath.appendingPathExtension(api.path)
        let params = [
            "offset": "\(offset)",
            "limit": "\(limit)"
        ]
        
        let response = await self.http.get(url: url, parameters: params)
        switch response {
        case .success(let (data, _)):
            let decoder = JSONDecoder()
            do {
                let paginated: PaginatedResult<[PokemonSnapshot]> = try decoder.decode(PaginatedResult<[PokemonSnapshot]>.self, from: data)
                return .success(paginated)
            }
            catch let err {
                return .failure(err)
            }
            
        case .failure(let err):
            return .failure(err)
        }
    }
    
    func getPokemon(name: String) {
        
    }
}
