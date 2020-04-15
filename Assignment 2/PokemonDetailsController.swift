//
//  PokemonDetailsController.swift
//  Assignment 2
//
//  Created by Sameer Ahuja on 2020-03-21.
//  Copyright © 2020 Sameer Ahuja. All rights reserved.
//

import UIKit

class PokemonDetailsController: UIViewController, UITextFieldDelegate {
    
    
    //Set up Outlets.
    @IBOutlet weak var rankField: UILabel!
    @IBOutlet weak var nameField: UILabel!
    @IBOutlet weak var typeField: UILabel!
    @IBOutlet weak var descriptionField: UILabel!
    @IBOutlet weak var pokemonPicture: UIImageView!
    @IBOutlet weak var ratingField: UITextField!
    
    
    var pokemon: Pokemon! {
        didSet {
            navigationItem.title = pokemon.name
        }
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
    }
    //Set up Number Formatter for decimal .
    let numberFormatter : NumberFormatter = {
        let formatter = NumberFormatter()
        formatter.numberStyle = .decimal
        formatter.minimumFractionDigits = 2
        formatter.maximumFractionDigits = 2
        return formatter
    }()
    
    //Setting up view before it appears.
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        rankField.text = "#\(pokemon.pokedexNumber)"
        ratingField.text = numberFormatter.string(from: NSNumber(value: pokemon.rating))
        nameField.text = pokemon.name
        typeField.text = NSLocalizedString(pokemon.type, comment: "type")
        pokemonPicture.image = UIImage(named: pokemon.picture)
        descriptionField.text = NSLocalizedString(pokemon.about, comment: "description")
        
    }
    //Saving data back to data store after view disappears.
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        
        view.endEditing(true)
        
        if let ratingText = ratingField.text, let value =
            numberFormatter.number(from: ratingText) {
            pokemon.rating = value.intValue
        } else {
            pokemon.rating = 1
        }
        
    }
    //resign keyboard after return.
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }
    
    //resign keyboard after tap gesture on background.
    @IBAction func backgroundTapped(_ sender: Any) {
        view.endEditing(true)
    }
    
    
    
    /*// MARK: - Navigation
     
     // In a storyboard-based application, you will often want to do a little preparation before navigation
     override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
     // Get the new view controller using segue.destination.
     // Pass the selected object to the new view controller.
     }
     */
    
}
