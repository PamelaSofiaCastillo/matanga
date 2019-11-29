//
//  ContentView.swift
//  iNews
//
//  Created by Gabriela Antezana on 11/25/19.
//  Copyright © 2019 Sofia Castillo. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    @State private var selection = 0
 
    var body: some View {
        TabView(selection: $selection){
            NewsView()
    
                .tabItem {
                    VStack {
                        Image(systemName:"doc.text")
                        Text("News")
                    }
                }
                .tag(0)
            
            FavoriteView()
            .tabItem {
                    VStack {
                        Image( systemName: "star")
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
