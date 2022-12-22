//
//  Pokemon.swift
//  PokemonJSON
//
//  Created by Max Franz Immelmann on 12/21/22.
//

import Foundation

struct PokeAPI: Decodable {
    let results: [Pokemon]
}

struct Pokemon: Decodable {
    let name: String
    let url: String
}

struct PokemonURL: Decodable {
    let sprites: Sprites
}
 
struct Sprites: Decodable {
    let other: Other
}
 
struct Other: Decodable {
    let home: Home
}
 
struct Home: Decodable {
    let front_default: String
}
