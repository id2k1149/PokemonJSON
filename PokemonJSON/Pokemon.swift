//
//  Pokemon.swift
//  PokemonJSON
//
//  Created by Max Franz Immelmann on 12/21/22.
//

import Foundation

struct PokemonApp {
    let results: [Pokemon]
}

struct Pokemon {
    let name: String
    let url: String
}

struct PokemonURL {
    let sprites: Sprites
}

struct Sprites {
    let other: Other
}

struct Other {
    let home: Home
}

struct Home {
    let front: Front
}

struct Front {
    let front_default: String
}
