//
//  ContentView.swift
//  iGamesOfThrones
//
//  Created by Gabriela Antezana on 11/28/19.
//  Copyright © 2019 Sofia Castillo. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    @State private var selection = 0
 
    var body: some View {
        TabView(selection: $selection){
            
            FlagView()
                .font(.title)
                .tabItem {
                    VStack {
                        Image(systemName: "flag")
                        Text("Roles")
                    }
                }
                .tag(0)
            Text("Second View")
                .font(.title)
                .tabItem {
                    VStack {
                        Image(systemName: "star")
                        Text("Favorites")
                    }
                }
                .tag(1)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
