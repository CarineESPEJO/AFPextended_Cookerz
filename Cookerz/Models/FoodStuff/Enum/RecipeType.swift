//
//  RecipeType.swift
//  Cookerz
//
//  Created by Carine ESPEJO on 05/03/2025.
//

import Foundation

// this enum is to group recipe into categories (a recipe can be in multiple categories) to help the user to choose easily in the criteria when searching recipes
enum RecipeType : CaseIterable {
    case asian
    case italian
    case french
    case vegetarien
    case vegan
    case dairyFree
    
    var name : String {
        switch self {
            case .asian :
                return "Asiatique"
            case .italian :
                return "Italien"
            case .french :
                return "Français"
            case .vegetarien :
                return "Végétarien"
            case .vegan :
                return "Végétalien"
            case .dairyFree :
                return "Sans Lactose"
        }
    }
    
    var icon : String {
        switch self {
            case .asian :
                return "asiatique"
            case .italian :
                return "italien"
            case .french :
                return "français"
            case .vegetarien :
                return "vegetarienIcon"
            case .vegan :
                return "vegetalien"
            case .dairyFree :
                return "sans-lactose"
        }
    }
}
