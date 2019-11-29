//
//  UserViewModel.swift
//  YourWay
//
//  Created by Sofia Castillo on 11/23/19.
//  Copyright © 2019 yourway. All rights reserved.
//

import Foundation

struct UserViewModel: Identifiable {
    
    var user: User
    
    var id = UUID()
    
    init(user: User) {
        self.user = user
    }
    
    var userId: Int {
        return self.user.id!
    }
    
    var name: String {
        return self.user.name!
    }
    
    var lastName: String {
        return self.user.lastName!
    }
    
    var email: String {
        return self.user.email!
    }
}
