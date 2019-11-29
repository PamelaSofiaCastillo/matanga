//
//  AboutFriendView.swift
//  YourWay
//
//  Created by Sofia Castillo on 11/23/19.
//  Copyright © 2019 yourway. All rights reserved.
//

import SwiftUI

struct AboutFriendView: View {
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    var userViewModel: UserViewModel
    
    var body: some View {
        VStack {
            Image(systemName: "person.fill")
                .resizable()
                .frame(width: 150, height: 150)
            Text(userViewModel.name)
                .bold()
                .font(.largeTitle)
            Text(userViewModel.lastName)
            Text(userViewModel.email)
        }
        .navigationBarTitle("")
        .navigationBarBackButtonHidden(true)
        .navigationBarItems(leading:
            Button(action: {
                DispatchQueue.main.asyncAfter(deadline: .now()) {
                    self.presentationMode.wrappedValue.dismiss()
                }
            }) {
                HStack {
                    Image(systemName: "chevron.left")
                        .accentColor(Color.black)
                    Text("Lista de amigos")
                        .foregroundColor(Color.black)
                }
        })
    }
}

struct AboutFriendView_Previews: PreviewProvider {
    static var previews: some View {
        AboutFriendView(userViewModel: UserViewModel(user: User()))
    }
}
