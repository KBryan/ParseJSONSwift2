//
//  Person.swift
//  ParseJSONSwift2
//
//  Created by KBryan on 2015-11-01.
//  Copyright © 2015 KBryan. All rights reserved.
//

import Foundation

struct Person {
    private var name:String!
    private var height:String!
    private var birthYear:String!
    private var hairColour:String!
    /// getter for private variables
    var NAME:String {
        return name
    }
    var HEIGHT:String {
        return height
    }
    var BIRTHYEAR:String {
        return birthYear
    }
    var HAIRCOLOUR:String {
        return hairColour
    }
    init(name:String,height:String,birthYear:String,hairColour:String)
    {
        self.name = name
        self.height = height
        self.birthYear = birthYear
        self.hairColour = hairColour
    } 
}
