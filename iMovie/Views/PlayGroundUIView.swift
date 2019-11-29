//
//  PlayGroundUIView.swift
//  iMovie
//
//  Created by Gabriela Antezana on 11/24/19.
//  Copyright © 2019 Sofia Castillo. All rights reserved.
//

import SwiftUI

struct PlayGroundUIView: View {
    var body: some View {
        VStack{
            HStack {
                Image(systemName: "play")
                    .resizable()
                    .frame(width: 50, height: 70)
                    .padding(.leading, 8)
                VStack {
                    HStack {
                        Text("Titulo")
                            .bold()
                        Spacer()
                    }
                    HStack {
                        Text("Descripcion")
                            .padding(.top, 8)
                        
                    Spacer()
                        
                    }
                }
                Button(action:{}){
                    Image(systemName: "heart")
                        .font(.largeTitle)
                        .padding(.trailing, 16)
                    
                }
            }
            Spacer()
            
        }
        
        
    }
}

struct PlayGroundUIView_Previews: PreviewProvider {
    static var previews: some View {
        PlayGroundUIView()
    }
}
