//
//  PokemonCell.swift
//  Assignment 2
//
//  Created by Sameer Ahuja on 2020-03-20.
//  Copyright © 2020 Sameer Ahuja. All rights reserved.
//

import UIKit
class PokemonItemCell: UITableViewCell {
    
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var pokedexNumberLabel: UILabel!
    @IBOutlet weak var typeLabel: UILabel!
    @IBOutlet weak var pokemonImage: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        nameLabel.adjustsFontForContentSizeCategory = true
        pokedexNumberLabel.adjustsFontForContentSizeCategory = true
        typeLabel.adjustsFontForContentSizeCategory = true
    }
}
