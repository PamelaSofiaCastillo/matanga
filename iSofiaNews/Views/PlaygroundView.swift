//
//  PlaygroundView.swift
//  iSofiaNews
//
//  Created by Gabriela Antezana on 11/27/19.
//  Copyright © 2019 Sofia Castillo. All rights reserved.
//

import SwiftUI

struct PlaygroundView: View {
    var body: some View {
        
        VStack{
            HStack{
                Image(systemName: "doc.richtext")
                    .resizable()
                    .frame(width: 50, height: 70)
                    .padding(.leading,8)
                
                VStack {
                    
                    HStack {
                        Text("titulo")
                        .bold()
                        .lineLimit(1)
                      Spacer()
                    }
                    HStack {
                        Text("description")
                        .lineLimit(2)
                            .padding(.top,8)
                        Spacer()
                    }
                }
                
                Button(action:{}){
                    Image(systemName: "eye")
                        .padding(.trailing,8)
                    
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
