//
//  Level.swift
//  Cookerz
//
//  Created by Carine ESPEJO on 05/03/2025.
//

import Foundation

// We choose to categorize the recipes into three difficulty levels.
//To manage this cleanly and efficiently, we used an enum to associate each level with its corresponding visual elements, allowing for easier reuse throughout the app.
enum Level {
    //defaultdifficulty is for giving a visual to a button in the creation pages when it's not already clicked a 1st time
    case defaultdifficulty
    case easy
    case medium
    case hard
    
    var name : String {
        switch self {
        case .defaultdifficulty :
            return "Difficulté"
        case .easy:
            return "Facile"
        case .medium:
            return "Moyen"
        case .hard:
            return "Difficile"
        }
    }
    
    var IconColor : String {
        switch self {
        case .defaultdifficulty :
            return ""
        case .easy:
            return "flame1_color"
        case .medium:
            return "flame2_color"
        case .hard:
            return "flame3_color"
        }
    }
    
    var IconBlackWhite : String {
        switch self {
        case .defaultdifficulty :
            return ""
        case .easy:
            return "flame1_bw"
        case .medium:
            return "flame2_bw"
        case .hard:
            return "flame3_bw"
        }
    }

}
