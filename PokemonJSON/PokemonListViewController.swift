//
//  PokemonListViewController.swift
//  PokemonJSON
//
//  Created by Max Franz Immelmann on 12/21/22.
//

import UIKit

class PokemonListViewController: UITableViewController {
    
    var pokemons: [Pokemon] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
}

extension PokemonListViewController{
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        0
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "pokemonCell", for: indexPath)

        return cell
    }
}
