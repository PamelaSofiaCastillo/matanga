//
//  TabFriendView.swift
//  YourWay
//
//  Created by Sofia Castillo on 11/9/19.
//  Copyright © 2019 yourway. All rights reserved.
//

import SwiftUI

struct FriendRow: View {
    var user: UserViewModel
    
    var body: some View {
        HStack {
            VStack {
                Image(systemName: "person.fill")
                    .resizable()
                    .frame(width: 70, height: 70, alignment: .top)
                    .padding(.leading, 16)
                    .padding(.top, 8)
                Spacer()
            }
            VStack {
                HStack {
                    Text(user.name)
                        .font(.system(size: 20))
                        .bold()
                        .lineLimit(2)
                        .padding(.top, 4)
                    Spacer()
                }
                HStack {
                    Text(user.lastName)
                        .font(.system(size: 15))
                        .lineLimit(2)
                        .padding(.top, 8)
                    Spacer()
                }
                HStack {
                    Text(user.email)
                        .font(.system(size: 15))
                        .lineLimit(2)
                        .padding(.top, 8)
                    Spacer()
                }
                Spacer()
            }
            .padding(.leading, 8)
            .padding(.trailing, 16)
        }
    }
}

struct TabFriendView: View {
    @ObservedObject private var usersListViewModel = UserListViewModel(userId: "12")
    
    var body: some View {
        NavigationView {
            VStack {
                List(self.usersListViewModel.users) { user in
                    NavigationLink(destination: AboutFriendView(userViewModel: user)) {
                        FriendRow(user: user)
                    }
                }
                .padding(.top, 16)
            }
            .navigationBarTitle("")
            .navigationBarHidden(true)
        }
    }
}

struct TabFriendView_Previews: PreviewProvider {
    static var previews: some View {
        TabFriendView()
    }
}
