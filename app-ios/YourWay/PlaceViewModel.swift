//
//  PlaceViewModel.swift
//  YourWay
//
//  Created by Sofia Castillo on 11/23/19.
//  Copyright © 2019 yourway. All rights reserved.
//

import Foundation


struct PlaceViewModel: Identifiable {
    
    var place: Place
    
    var id = UUID()
    
    init(place: Place) {
        self.place = place
    }
    
    var name: String {
        return self.place.name!
    }
    
    var lat: String {
        return self.place.lat!
    }
    
    var lng: String {
        return self.place.lng!
    }
    
    var active: Bool {
        return self.place.active!
    }
    
    var sportType: Int {
        return self.place.sportType!
    }
}


