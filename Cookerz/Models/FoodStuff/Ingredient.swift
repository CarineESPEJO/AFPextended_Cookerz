//
//  Ingredient.swift
//  Cookerz
//
//  Created by Carine ESPEJO on 07/03/2025.
//

import Foundation

struct Ingredient : Identifiable, Hashable{
    var id  : UUID = UUID()
    var name : String
    // Enum
    var type : IngredientType
    // We need the the null (?) on this 2 variables because, when an ingredient is added to a recipe or workshop, 
    //it's present for when we use the wheel to select an ingredient before adding the quantity and unit.
    var quantity : Double?
    var unit : IngredientUnit?
}


