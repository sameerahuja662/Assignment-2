//
//  Pokemon.swift
//  Assignment 2
//
//  Created by Sameer Ahuja on 2020-03-20.
//  Copyright © 2020 Sameer Ahuja. All rights reserved.
//

import Foundation

class Pokemon: NSObject {
    var name: String
    var pokedexNumber: Int
    var rating: Int
    var type: String
    var about: String
    var picture: String
    
    init(name: String, pokedexNumber: Int,rating: Int, type: String,about: String, image: String) {
        self.name = name
        self.pokedexNumber = pokedexNumber
        self.rating = rating
        self.type = type
        self.about = about
        self.picture = image
        
        super.init()
    }
}
