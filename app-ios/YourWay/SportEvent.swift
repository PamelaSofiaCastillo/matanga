//
//  SportEvent.swift
//  YourWay
//
//  Created by Alumnos on 11/9/19.
//  Copyright © 2019 yourway. All rights reserved.
//

import Foundation

struct SportEvent: Codable {
    var id: Int?
    var title: String?
    var description: String?
    var userId: Int?
    var sportTypeId: Int?
    var privacityTypeId: Int?
    var rating: Float?
    var placeId: Int?
    var active: Bool?
    var date: String?
    
    var place: Place?
    var sportEventByUsers: [SportEventUser]
    
    init(){
        id = 0
        title = "Unknowm"
        description = "Unknowm"
        userId = 0
        sportTypeId = 0
        privacityTypeId = 0
        placeId = 0
        active = true
        date = "Unknowm"
        rating = 0.0
        
        place = Place()
        sportEventByUsers = [SportEventUser(), SportEventUser(), SportEventUser()]
    }
    
    
}
    
