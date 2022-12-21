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
    
    private init(){}
}
