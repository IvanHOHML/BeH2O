//
//  UserProfile.swift
//  Hydration Profile
//
//  Created by Jason So on 1/9/2020.
//  Copyright © 2020 Jason So. All rights reserved.
//

import Foundation

struct UserProfile {
    
    let gender : String
    let age : Int
    let height : Double
    let weight : Double
    let activity : String
    
    var activityLevel : Int {
        get {
            switch self.activity {
            case "rarely" :
                return 0
            case "seldom" :
                return 1
            case "weekly" :
                return 2
            default :
                return 3
            }
        }
    }
    
    var waterTarget : Int {
        get {
            return Int((1.47*self.weight+Double(12*self.activityLevel))*22.18)
        }
    }
}
