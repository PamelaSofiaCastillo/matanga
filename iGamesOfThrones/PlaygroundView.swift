//
//  PlaygroundView.swift
//  iGamesOfThrones
//
//  Created by Gabriela Antezana on 11/28/19.
//  Copyright © 2019 Sofia Castillo. All rights reserved.
//

import SwiftUI

struct PlaygroundView: View {
    var body: some View {
        VStack{
            
            HStack{
                Image(systemName: "play")
                .resizable()
                .frame(width: 50, height: 70)
                    .padding(.leading, 16)
                
                VStack{
                    HStack {
                        Text("Name")
                        .bold()
                        .lineLimit(1)
                      Spacer()
                        
                    }
                    
                    HStack {
                        Text("Country")
                        .lineLimit(2)
                        .padding(.top,16)
                     Spacer()
                    }
                    
                    
                }
                
                Button(action:{}){
                    Image(systemName: "eye")
                        .font(.largeTitle)
                        .padding(.trailing,16)
                }
                
            }
            Spacer()
        }
        
    }
}

struct PlaygroundView_Previews: PreviewProvider {
    static var previews: some View {
        PlaygroundView()
    }
}
