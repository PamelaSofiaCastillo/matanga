//
//  UserListViewModel.swift
//  YourWay
//
//  Created by Sofia Castillo on 11/23/19.
//  Copyright © 2019 yourway. All rights reserved.
//

import Foundation

class UserListViewModel: ObservableObject {
    
    @Published var users = [UserViewModel]()
    
    init(userId: String) {
        YourWayService().getFriends(userId: userId, completion: { users in
            if let _users = users {
                self.users = _users.map(UserViewModel.init)
            }
        })
    }
}
