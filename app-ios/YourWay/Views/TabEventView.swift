//
//  TabEventView.swift
//  YourWay
//
//  Created by Sofia Castillo on 11/9/19.
//  Copyright © 2019 yourway. All rights reserved.
//

import SwiftUI

struct SportEventRow: View {
    var sportEvent: SportEventViewModel
    
    var body: some View {
        HStack {
            VStack {
                Image(systemName: "sportscourt.fill")
                    .resizable()
                    .frame(width: 70, height: 50, alignment: .top)
                    .padding(.leading, 16)
                    .padding(.top, 8)
                Spacer()
            }
            VStack {
                HStack {
                    Text(sportEvent.title)
                        .font(.system(size: 20))
                        .bold()
                        .lineLimit(2)
                        .padding(.top, 4)
                    Spacer()
                }
                HStack {
                    Text(sportEvent.description)
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

struct TabEventView: View {
    @State private var showingChildView = false
    @ObservedObject private var sportEventListViewModel = SportEventListViewModel(userId: "12")
    
    var body: some View {
        NavigationView {
            VStack {
                List(self.sportEventListViewModel.sportEvents) { sportEvent in
                    NavigationLink(destination: AboutEventView(sportEventViewModel: sportEvent)) {
                        SportEventRow(sportEvent: sportEvent)
                    }
                }
                .padding(.top, 16)
             }
            .navigationBarTitle("")
            .navigationBarHidden(true)
        }
    }
}

struct TabEventView_Previews: PreviewProvider {
    static var previews: some View {
        TabEventView()
    }
}
