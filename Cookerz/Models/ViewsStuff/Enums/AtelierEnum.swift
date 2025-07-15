//
//  AtelierEnum.swift
//  Cookerz
//
//  Created by Carine ESPEJO on 13/03/2025.
//

// enum to switch between the 2 parts (description and ingredients) of the cooking classes Pages and cooking classes creation Page
enum AtelierEnum {
    case description
    case ingredients
   
    
    var name : String {
        switch self {
        case .description :
            return "Description"
        case .ingredients :
            return "Ingredients"
       
            
        }
    }
    
}
