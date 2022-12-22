//
//  PokemonViewCell.swift
//  PokemonJSON
//
//  Created by Max Franz Immelmann on 12/21/22.
//

import UIKit

class PokemonViewCell: UITableViewCell {
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet var pokemonImageView: UIImageView!
    
    func configure(pokemon: Pokemon) {
        nameLabel.text = pokemon.name
        NetworkManager.shared.fetch(dataType: PokemonURL.self,
                                    url: pokemon.url) { pokemonURL in
            NetworkManager.shared.fetchImage(from: pokemonURL.sprites.other.home.front_default) { data in
                self.pokemonImageView.image = UIImage(data: data)
            }
        }
    }
}

