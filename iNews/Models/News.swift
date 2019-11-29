//
//  News.swift
//  iNews
//
//  Created by Gabriela Antezana on 11/25/19.
//  Copyright © 2019 Sofia Castillo. All rights reserved.
//

import Foundation

struct News: Decodable, Identifiable {
  let id: Int
  let title: String
  let description: String
  let imageUrl:String

  
  enum CodingKeys: String, CodingKey {
      case id = "id"
      case title = "title"
      case description = "description"
      case imageUrl = "urlToImage"
    
  }


struct News: Decodable, Identifiable {
    let id: Int
    let title: String
    let description: String
    let imageUrl:String
  
    
    enum CodingKeys: String, CodingKey {
        case id = "id"
        case title = "title"
        case description = "description"
        case imageUrl = "urlToImage"
      
    }
    
}
