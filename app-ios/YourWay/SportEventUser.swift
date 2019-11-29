//
//  SportEventUser.swift
//  YourWay
//
//  Created by Alumnos on 11/9/19.
//  Copyright © 2019 yourway. All rights reserved.
//

import Foundation

struct SportEventUser: Codable, Identifiable {
    //var idd = UUID()
    var id: Int?
    var userId: Int?
    var eventId: Int?
    var user: User?
    
    init(){
        id = 0
        userId = 0
        eventId = 0
        user = User()
    }
}
