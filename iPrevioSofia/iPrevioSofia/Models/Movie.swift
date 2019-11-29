//
//  Movie.swift
//  iPrevioSofia
//
//  Created by Gabriela Antezana on 11/24/19.
//  Copyright © 2019 Sofia Castillo. All rights reserved.
//

import Foundation

struct Movie: Decodable, Identifiable {
    let id: Int
    let title: String
    let overView: String
    let genders: [Int]
    let poster: String
    
    enum CodingKeys: String, CodingKey {
        case id = "id"
        case title = "title"
        case overView = "overview"
        case genders = "genre_ids"
        case poster = "poster_path"
    }
    
    var imageUrlString: String {
        return urlImage + poster
    }
}

struct MovieResponse: Decodable {
    var results = [Movie]()
    
    enum CodingKeys: String, CodingKey {
        case results = "results"
    }
}
