//
//  Place.swift
//  YourWay
//
//  Created by Alumnos on 11/9/19.
//  Copyright © 2019 yourway. All rights reserved.
//

import Foundation

struct Place: Codable {
    var id: Int?
    var name: String?
    var lat: String?
    var lng: String?
    var active: Bool?
    var sportType: Int?
    
    init(){
        id = 0
        name = "Unknowm"
        lat = "Unknowm"
        lng = "Unknowm"
        active = true
        sportType = 0
    }
}
