//
//  User.swift
//  Cookerz
//
//  Created by Carine ESPEJO on 05/03/2025.
//

import Foundation

struct User : Identifiable{
    var id  : UUID = UUID()
    var name : String
    // it's as a little catch phrase (ex : Chistopher "the spices lover")
    var titleName : String
    var image : String
    
    var listRecipes : [Recipe] 
    
    var listRecipesCount: Int {
        listRecipes.count
    }
    
    // Followers
    var listFollowersId : [UUID]
    // We didn't know if we will need this code later, so we lel it here as comment
//    var listFollowersCount: Int {
//        listFollowersId.count
//    }
    
    // Followed
    var listFollowedId : [UUID]
    //Same
//    var listFollowedCount: Int {
//        listFollowedId.count
//    }
    
    var listChallenges : [Challenge]

    var rewardsUsed : [Reward]
    

}

