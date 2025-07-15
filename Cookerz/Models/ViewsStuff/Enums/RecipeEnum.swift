//
//  RecipeEnum.swift
//  Cookerz
//
//  Created by Carine ESPEJO on 07/03/2025.
//

// enum to switch between the 2 parts (ingredients and steps) of the recipes Pages and recipes creation Pages
enum RecipeEnum {
    case ingredients
    case instructions
    
    var name : String {
        switch self {
        case .ingredients :
            return "Ingredients"
        case .instructions :
            return "Instructions"
            
        }
    }
    
}
