//
//  PlaceListViewModel.swift
//  YourWay
//
//  Created by Sofia Castillo on 11/23/19.
//  Copyright © 2019 yourway. All rights reserved.
//

import Foundation

class PlaceListViewModel: ObservableObject {
    
    @Published var places = [PlaceViewModel]()
    @Published var landmarks: [Landmark] = []
    @Published var selectedLandmark: Landmark? = nil
    
    init() {
        YourWayService().getPlaces(completion: { places in
            if let _places = places {
                self.places = _places.map(PlaceViewModel.init)
                self.landmarks = self.toLandMarks()
            }
        })
    }
    
    func toLandMarks() -> [Landmark] {
        var placesLandMarks:[Landmark] = []
        for place in places {
            placesLandMarks.append(
                Landmark(name: place.name, location: .init(latitude: Double(place.lat)!, longitude: Double(place.lng)!))
            )
        }
        
        return placesLandMarks
    }
}

