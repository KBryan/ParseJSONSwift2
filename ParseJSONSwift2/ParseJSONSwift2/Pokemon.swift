//
//  Person.swift
//  ParseJSONSwift2
//
//  Created by KBryan on 2015-11-01.
//  Copyright © 2015 KBryan. All rights reserved.
//

import Foundation

class Pokemon {
    
    private var _name:String!
    private var _pokedexID:Int!
    private var _description:String!
    private var _type:String!
    private var _defense:String!
    private var _height:String!
    private var _weight:String!
    private var _attack:String!
    private var _nextEvolutionTxt:String!
    private var _pokemonURL:String!
    
    var name:String {
        return _name
    }
    var pokedexID:Int {
        return _pokedexID
    }
    init(name:String,pokedexID:Int) {
        self._name = name
        self._pokedexID = pokedexID
        _pokemonURL = "\(URL_BASE)\(URL_POKEMON)\(self._pokedexID)/"
    }
    func downloadPokemonDetails(completed:DownloadComplete) {
        
    }
    
}
