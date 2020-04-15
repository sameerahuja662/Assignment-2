//
//  PokedexEntryViewController.swift
//  Assignment 2
//
//  Created by Sameer Ahuja on 2020-03-21.
//  Copyright © 2020 Sameer Ahuja. All rights reserved.
//

import UIKit

class PokedexEntryViewController: UIViewController, UIPickerViewDataSource, UIPickerViewDelegate {
    
    var selectedType: String = ""
    //types for View Picker.
    let pokemonTypes = ["All Pokemons","Grass","Fire","Water"]
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
       return 1
    }
    //Size of View Picker
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return pokemonTypes.count
    }
    //Supplies Strigs to View Picker
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return NSLocalizedString(pokemonTypes[row], comment: "pokemon types")
    }
    //Get Selected item from View Picker.
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        selectedType = pokemonTypes[row]
    }

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

   
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        switch segue.identifier {
        case "showPokemonList"?:
            
                let listViewController = segue.destination as! PokedexListController
                listViewController.pokemonType = selectedType
            
        default:
            preconditionFailure("Unexpected segue identifier")
        }
    }
   

}
