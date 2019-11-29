//
//  New.swift
//  iNews
//
//  Created by Gabriela Antezana on 11/25/19.
//  Copyright © 2019 Sofia Castillo. All rights reserved.
//

import Foundation

struct New: Decodable, Identifiable {
    let id: Int
    let title: String
    let description: String
    let genders: [Int]
    let poster: String
    
    enum CodingKeys: String, CodingKey {
        case id = "id"
        case title = "title"
        case description = "description"
        case genders = "genre_ids"
        case poster = "poster_path"
    }
    
    var imageUrlString: String {
        return urlImage + poster
    }
}

