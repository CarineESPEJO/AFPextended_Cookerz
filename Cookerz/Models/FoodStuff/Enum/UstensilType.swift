//
//  UstensilType.swift
//  Cookerz
//
//  Created by Carine ESPEJO on 07/03/2025.
//

import Foundation

// this enum is to group ustensil of the same type and so the user can choose easily in the criteria when searching recipes
// we wanted to use an API (we didn't have time unfortunatly) but the ustensil were'nt categorized so we needed to create our own categories
enum UstensilType: CaseIterable {
    case knife
    case cookerMachine
    case socket
    
    var name: String {
        switch self {
        case .knife:
            return "Couteau"
        case .cookerMachine:
            return "Cuiseur"
        case .socket:
            return "Douille"
        }
    }
    
    var Icon: String {
        switch self {
        case .knife:
            return "butcherknife"
        case .cookerMachine:
            return "mixer"
        case .socket:
            return "Chef hat"
        }
    }
}
