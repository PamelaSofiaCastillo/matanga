//
//  User.swift
//  YourWay
//
//  Created by Alumnos on 11/9/19.
//  Copyright © 2019 yourway. All rights reserved.
//

import Foundation

struct User: Codable {
    var id: Int?
    var name: String?
    var lastName: String?
    var email: String?
    var password: String?
    var imageUrl: String?
    var active: Bool?

    init(){
        id = 0
        name = "Unknowm"
        lastName = "Unknowm"
        email = "Unknowm"
        password = "Unknowm"
        imageUrl = "Unknowm"
        active = true
    }
}
