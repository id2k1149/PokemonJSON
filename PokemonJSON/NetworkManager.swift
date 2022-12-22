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

enum urlList: String {
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
                
                DispatchQueue.main.async {
                    completion(pokemonApp.results)
                }
                
            } catch {
                print(error)
            }
        }.resume()
    }
    
    func fetchImage(from url: String, completion: @escaping(Data) -> Void) {
        guard let url = URL(string: url) else { return }
        guard let imageData = try? Data(contentsOf: url) else { return }
        completion(imageData)
    }
    
    private init(){}
}
