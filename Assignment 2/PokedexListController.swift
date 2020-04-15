//
//  PokedexListController.swift
//  Assignment 2
//
//  Created by Sameer Ahuja on 2020-03-20.
//  Copyright © 2020 Sameer Ahuja. All rights reserved.
//

import UIKit

class PokedexListController: UITableViewController {
    
    var pokemonList: PokemonList!
    //Get Data from prevoius screen.
    var pokemonType: String!{
        didSet{
            pokemonList = PokemonList(type: pokemonType)
        }
    }
    
    
    //Set left nav button as Edit.
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        navigationItem.leftBarButtonItem = editButtonItem
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
    }
    
    
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        tableView.reloadData()
    }
    
    // MARK: - Table view data source
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return pokemonList.allPokemons.count
    }
    
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "pokemonItemCell", for: indexPath) as! PokemonItemCell
        
        // Configure the cell...
        
        let pokemonItem = pokemonList.allPokemons[indexPath.row]
        
        cell.nameLabel.text = pokemonItem.name
        cell.pokedexNumberLabel.text = "#\(String(describing: pokemonItem.pokedexNumber))"
        cell.typeLabel.text = NSLocalizedString(pokemonItem.type, comment: "type")
        cell.pokemonImage.image = UIImage(named: pokemonList.allPokemons[indexPath.row].picture)
        
        return cell
    }
    
    //Set up Editing Function of table.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            let pokemonCell = pokemonList.allPokemons[indexPath.row]
            
            let title = "\(NSLocalizedString("Delete", comment: ""))  \(pokemonCell.name)?"
            let alertMessage = NSLocalizedString("Are you sure you want to delete this pokemon?", comment: "alert message")
            let ac = UIAlertController(title: title, message: alertMessage, preferredStyle: .actionSheet)
            
            let cancelAction = UIAlertAction(title: NSLocalizedString("Cancel", comment: ""), style: .cancel, handler: nil)
            ac.addAction(cancelAction)
            
            let deleteAction = UIAlertAction(title:NSLocalizedString("Delete", comment: ""), style: .destructive, handler:
            {(action)->Void in
                self.pokemonList.allPokemons.remove(at: indexPath.row)
                self.tableView.deleteRows(at: [indexPath], with: .automatic)
            })
            ac.addAction(deleteAction)
            present(ac, animated: true, completion: nil)
        }
    }
    
    override func tableView(_ tableView: UITableView, moveRowAt sourceIndexPath: IndexPath, to destinationIndexPath: IndexPath) {
        
        if sourceIndexPath.row == destinationIndexPath.row {
            return
        }
        
        //Store pokemon to be moved.
        let movePokemon = pokemonList.allPokemons[sourceIndexPath.row]
        //Delete from sorce index.
        self.pokemonList.allPokemons.remove(at: sourceIndexPath.row)
        //Insert at destination index.
        self.pokemonList.allPokemons.insert(movePokemon, at: destinationIndexPath.row)
        
    }
    
    
    
    
    
    
    // MARK: - Navigation
    
    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        switch segue.identifier {
        case "showPokemon"?:
            
            if let row = tableView.indexPathForSelectedRow?.row {
                let item = pokemonList.allPokemons[row]
                let detailViewController = segue.destination as! PokemonDetailsController
                detailViewController.pokemon = item
            }
        default:
            preconditionFailure("Unexpected segue identifier")
        }
    }
    
    
}
