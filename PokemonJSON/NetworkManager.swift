//
//  NetworkManager.swift
//  PokemonJSON
//
//  Created by Max Franz Immelmann on 12/21/22.
//

import Foundation

enum NetworkError: Error {
    case invalidURL
    case noData
    case decodingError
}

enum List: String {
    case url = "https://pokeapi.co/api/v2/pokemon"
}

class NetworkManager {
    static let shared = NetworkManager()
    
    func fetchPokemons(url: String, completion: @escaping([Pokemon]) -> Void) {
        guard let url = URL(string: url) else { return }
        
        URLSession.shared.dataTask(with: url) { data, urlResponse, error in
            guard let data = data else { return }
            
            do {
                let decoder = JSONDecoder()
                let pokemonApp = try decoder.decode(PokemonApp.self, from: data)
                completion(pokemonApp.results)
            } catch {
                print(error)
            }
        }
        
        
        
    }
    
    private init(){}
}
