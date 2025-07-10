//
//  Recipe.swift
//  Cookerz
//
//  Created by Carine ESPEJO on 05/03/2025.
//

import Foundation

// model for r=the recipes
struct Recipe : Identifiable{
    var id  : UUID = UUID()
    //id of the user who created the recipe
    var creatorId : UUID
    var title : String
    var image : String
    var type : [RecipeType]
    var portion : Int
    // to put the time in xx:yy form
    var durationHours : Int
    var durationMinutes : Int
    var level : Level
    //as an early app POC, we didn't have time to do a real counter of likes
    var likes : Int
    var ingredients : [Ingredient]
    var ustensils : [Ustensil]
    var steps : [String]
    //as said before, we did'nt have time for the esthetique we needed this bool var
    var isLiked : Bool
}

