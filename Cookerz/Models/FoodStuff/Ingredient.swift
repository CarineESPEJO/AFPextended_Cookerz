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
    // null (?) exist for the wheel to choose ingredient when we add ingredient when we create recipe or workshop before we can 
    var quantity : Double?
    var unit : IngredientUnit?
}


