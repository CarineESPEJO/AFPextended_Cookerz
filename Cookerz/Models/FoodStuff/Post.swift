//
//  Post.swift
//  Cookerz
//
//  Created by Carine ESPEJO on 05/03/2025.
//

import Foundation

struct Post : Identifiable{
    var id  : UUID = UUID()
    var creatorId : UUID
    //There is null (?) because we aren't obliged to give one
    var title : String?
    var image : String
    var date : Date
    var level : Level
    //as an early app POC, we didn't have time to do a real counter of likes
    var likes : Int
    //There is null (?) because, here also, we aren't obliged to give one 
    var durationHours : Int?
    var durationMinutes : Int?
    
    
    // This is used if the post is to confirm that a challenge has been completed.
    var isChallenge : Bool
    //There is null (?) because if it's not, we don't have a challenge ID
    var challengeId : UUID?
}



