//
//  Services.swift
//  iPrevioSofia
//
//  Created by Gabriela Antezana on 11/24/19.
//  Copyright © 2019 Sofia Castillo. All rights reserved.
//

import Foundation

let urlString = "https://api.themoviedb.org/3/search/movie?api_key=641e9985b1ec6b91ae80aeb4b855ba95&query=frozen"

let urlImage = "https://image.tmdb.org/t/p/w500/"

let url = URL(string: urlString)!

let session = URLSession.shared
