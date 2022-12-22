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
        fetchPokemons()
    }
    
    private func fetchPokemons() {
        NetworkManager.shared.fetchPokemons(url: urlList.url.rawValue) { pokemons in
            self.pokemons = pokemons
            self.tableView.reloadData()
        }
    }
}

extension PokemonListViewController{
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        pokemons.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "pokemonCell", for: indexPath) as? PokemonViewCell else { return UITableViewCell() }
        
        let pokemon = pokemons[indexPath.row]
        print(indexPath.row)
        
        cell.configur(pokemon: pokemon)

        return cell
    }
}
