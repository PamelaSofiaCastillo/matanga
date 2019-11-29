//
//  SportEventListViewModel.swift
//  YourWay
//
//  Created by Sofia Castillo on 11/19/19.
//  Copyright © 2019 yourway. All rights reserved.
//

import Foundation

class SportEventListViewModel: ObservableObject {
    
    @Published var sportEvents = [SportEventViewModel]()
    @Published var sportEventsAsMember = [SportEventViewModel]()
    
    init(userId: String) {
        YourWayService().getSportEventsByUser(userId: userId, completion: { events in
            if let events = events {
                self.sportEvents = events.map(SportEventViewModel.init)
            }
        })
    }
    
    init(userIdInv: String) {
        YourWayService().getSportEventsByUserAsMember(userId: userIdInv, completion: { events in
            if let events = events {
                self.sportEventsAsMember = events.map(SportEventViewModel.init)
            }
        })
    }
}

