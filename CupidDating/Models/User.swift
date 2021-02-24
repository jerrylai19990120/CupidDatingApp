//
//  User.swift
//  CupidDating
//
//  Created by Jerry Lai on 2021-02-20.
//  Copyright © 2021 Jerry Lai. All rights reserved.
//

import Foundation

struct User: Hashable, CustomStringConvertible {
    
    var id: Int
    
    let firstName: String
    let lastName: String
    let age: Int
    let imageName: String
    
    let occupation: String
    
    let distance: Int
    
    var description: String {
        return "\(firstName) \(lastName), \(age)"
    }

}
