//
//  Reward.swift
//  Cookerz
//
//  Created by Carine ESPEJO on 05/03/2025.
//

import Foundation

struct Reward: Identifiable {
    var id  : UUID = UUID()
    var name : String
    var type : RewardsType
    var icon : String
    var description : String
    var points : Int
    // its null because when its a template, there is no code 
    //and, in a functionnal app, one would be created at the moment the user choose this reward
    var code : String?
}


