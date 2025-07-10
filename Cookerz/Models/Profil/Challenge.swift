//
//  Challenge.swift
//  Cookerz
//
//  Created by Carine ESPEJO on 05/03/2025.
//

import Foundation
//Much later than when the database was established,
//one of the learners made their code work by adding Hashable here
struct Challenge : Identifiable, Hashable {
    var id  : UUID = UUID()
    var name : String
    var icon : String
    var level : Level
    var description : String
    var points : Int
    var challengeStatus : ChallengeStatus
}

