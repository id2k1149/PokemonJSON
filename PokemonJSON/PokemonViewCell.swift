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
    
    func configur(pokemon: Pokemon) {
        nameLabel.text = pokemon.name
    }
}
