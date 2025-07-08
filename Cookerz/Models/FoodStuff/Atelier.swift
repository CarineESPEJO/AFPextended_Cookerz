//
//  Atelier.swift
//  Cookerz
//
//  Created by Carine ESPEJO on 05/03/2025.
//

import SwiftUI

// model for online workshops
struct Atelier: Identifiable {
    var id: UUID = UUID()
    //link it to a user
    var creatorId: UUID
    var title: String
    var image: String
    var date: Date
    // number of plates of the recipe
    var portion : Int
    var level: Level
    var description: String
    //list of ingredients
    var ingredients: [Ingredient]
    //list of ustensils
    var ustensils: [Ustensil]
    //list of the users who will participate
    var usersRegistered: [UUID]
    //nb of people who can register
    var nbSeats: Int
    //fake Url of the live (POC app)
    var liveUrl: String?
}





