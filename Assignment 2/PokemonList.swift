//
//  PokemonList.swift
//  Assignment 2
//
//  Created by Sameer Ahuja on 2020-03-20.
//  Copyright © 2020 Sameer Ahuja. All rights reserved.
//

import Foundation

class PokemonList{
    var allPokemons = [Pokemon]()
    
    
    
    init(type: String){
        
        if type == "Fire"{
            allPokemons.append(Pokemon(name: "Charmander", pokedexNumber: 004,rating: 5, type: "Fire", about: "The flame that burns at the tip of its tail is an indication of its emotions. The flame wavers when Charmander is enjoying itself. If the Pokémon becomes enraged, the flame burns fiercely.", image: "Charmander.png"))
            
            allPokemons.append(Pokemon(name: "Charizard", pokedexNumber: 006,rating: 5, type: "Fire", about: "Charizard flies around the sky in search of powerful opponents. It breathes fire of such great heat that it melts anything. However, it never turns its fiery breath on any opponent weaker than itself.", image: "Charizard.png"))
            
            allPokemons.append(Pokemon(name: "Vulpix", pokedexNumber: 037,rating: 5, type: "Fire", about: "At the time of its birth, Vulpix has one white tail. The tail separates into six if this Pokémon receives plenty of love from its Trainer. The six tails become magnificently curled.", image: "Vulpix.png"))
            
            allPokemons.append(Pokemon(name: "Ninetales", pokedexNumber: 038,rating: 5, type: "Fire", about: "Ninetales casts a sinister light from its bright red eyes to gain total control over its foe's mind. This Pokémon is said to live for a thousand years.", image: "Ninetales.png"))
            
        }else if type == "Grass"{
            allPokemons.append(Pokemon(name: "Bulbasaur", pokedexNumber: 001,rating: 5, type: "Grass", about: "Bulbasaur can be seen napping in bright sunlight. There is a seed on its back. By soaking up the sun's rays, the seed grows progressively larger.", image: "Bulbasaur.png"))
            
            allPokemons.append(Pokemon(name: "Ivysaur", pokedexNumber: 002,rating: 5, type: "Grass", about: "There is a bud on this Pokémon's back. To support its weight, Ivysaur's legs and trunk grow thick and strong. If it starts spending more time lying in the sunlight, it's a sign that the bud will bloom into a large flower soon.", image: "Ivysaur.png"))
            
            allPokemons.append(Pokemon(name: "Venusaur", pokedexNumber: 003,rating: 5, type: "Grass", about: "There is a large flower on Venusaur's back. The flower is said to take on vivid colors if it gets plenty of nutrition and sunlight. The flower's aroma soothes the emotions of people.", image: "Venusaur.png"))
        }else if type == "Water"{
            allPokemons.append(Pokemon(name: "Squirtle", pokedexNumber: 007,rating: 5, type: "Water", about: "Squirtle's shell is not merely used for protection. The shell's rounded shape and the grooves on its surface help minimize resistance in water, enabling this Pokémon to swim at high speeds.", image: "Squirtle.png"))
            
            allPokemons.append(Pokemon(name: "Blastoise", pokedexNumber: 009,rating: 5, type: "Water", about: "Blastoise has water spouts that protrude from its shell. The water spouts are very accurate. They can shoot bullets of water with enough accuracy to strike empty cans from a distance of over 160 feet.", image: "Blastoise.png"))
            
            allPokemons.append(Pokemon(name: "Golduck", pokedexNumber: 055,rating: 5, type: "Water", about: "The webbed flippers on its forelegs and hind legs and the streamlined body of Golduck give it frightening speed. This Pokémon is definitely much faster than even the most athletic swimmer.", image: "Golduck.png"))
        }else{
            allPokemons.append(Pokemon(name: "Bulbasaur", pokedexNumber: 001,rating: 5, type: "All", about: "Bulbasaur can be seen napping in bright sunlight. There is a seed on its back. By soaking up the sun's rays, the seed grows progressively larger.", image: "Bulbasaur.png"))
            
            allPokemons.append(Pokemon(name: "Ivysaur", pokedexNumber: 002,rating: 5, type: "All", about: "There is a bud on this Pokémon's back. To support its weight, Ivysaur's legs and trunk grow thick and strong. If it starts spending more time lying in the sunlight, it's a sign that the bud will bloom into a large flower soon.", image: "Ivysaur.png"))
            
            allPokemons.append(Pokemon(name: "Venusaur", pokedexNumber: 003,rating: 5, type: "All", about: "There is a large flower on Venusaur's back. The flower is said to take on vivid colors if it gets plenty of nutrition and sunlight. The flower's aroma soothes the emotions of people.", image: "Venusaur.png"))
            
            allPokemons.append(Pokemon(name: "Charmander", pokedexNumber: 004,rating: 5, type: "Fire", about: "The flame that burns at the tip of its tail is an indication of its emotions. The flame wavers when Charmander is enjoying itself. If the Pokémon becomes enraged, the flame burns fiercely.", image: "Charmander.png"))
            
            allPokemons.append(Pokemon(name: "Charizard", pokedexNumber: 006,rating: 5, type: "Fire", about: "Charizard flies around the sky in search of powerful opponents. It breathes fire of such great heat that it melts anything. However, it never turns its fiery breath on any opponent weaker than itself.", image: "Charizard.png"))
            
            allPokemons.append(Pokemon(name: "Vulpix", pokedexNumber: 037,rating: 5, type: "Fire", about: "At the time of its birth, Vulpix has one white tail. The tail separates into six if this Pokémon receives plenty of love from its Trainer. The six tails become magnificently curled.", image: "Vulpix.png"))
        }
        
    }
    
    
}
