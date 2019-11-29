//
//  ImageLoader.swift
//  iPrevioSofia
//
//  Created by Gabriela Antezana on 11/25/19.
//  Copyright © 2019 Sofia Castillo. All rights reserved.
//

import Foundation

class ImageLoader: ObservableObject {
    @Published var dataIsValid = false
    var data:Data?
    
    init(urlString:String) {
        guard let url = URL(string: urlString) else { return }
        let task = URLSession.shared.dataTask(with: url) { data, response, error in
            guard let data = data else { return }
            DispatchQueue.main.async {
                self.dataIsValid = true
                self.data = data
            }
        }
        task.resume()
    }
}
