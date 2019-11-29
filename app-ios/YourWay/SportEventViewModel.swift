//
//  SportEventViewModel.swift
//  YourWay
//
//  Created by Sofia Castillo on 11/19/19.
//  Copyright © 2019 yourway. All rights reserved.
//

import Foundation


struct SportEventViewModel: Identifiable {
    
    var sportEvent: SportEvent
    
    var id = UUID()
    
    init(sportEvent: SportEvent) {
        self.sportEvent = sportEvent
    }
    
    var eventId: Int {
        return self.sportEvent.id!
    }
    
    var title: String {
        return self.sportEvent.title!
    }
    
    var description: String {
        return self.sportEvent.description!
    }
    
    var placeName: String {
        return self.sportEvent.place!.name!
    }
    
    var rating: Float {
        return self.sportEvent.rating!
    }
    
    var sportTypeId: Int {
        return self.sportEvent.sportTypeId!
    }
    
    var placeLandMark: Landmark {
        return Landmark(
            name: placeName,
            location: .init(latitude: Double(sportEvent.place!.lat!)!, longitude: Double(sportEvent.place!.lng!)!)
        )
    }
    
    var sportTypeImageName: String {
        return self.sportEvent.sportTypeId! == 1 ? "soccer" : self.sportEvent.sportTypeId! == 2 ? "run" : "basketball"
    }
    
    var sportEventByUsers: [SportEventUser] {
        return self.sportEvent.sportEventByUsers
    }
    
    var sportEventByUsersNames: [String] {
        var names:[String] = []
        
        for sebu in self.sportEvent.sportEventByUsers {
            names.append(sebu.user!.name!)
        }
        
        return names
    }
}
