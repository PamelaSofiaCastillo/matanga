//
//  PlaygroundView.swift
//  iPrevioSofia
//
//  Created by Gabriela Antezana on 11/24/19.
//  Copyright © 2019 Sofia Castillo. All rights reserved.
//

import SwiftUI

struct PlaygroundView: View {
    var body: some View {
        VStack{
            HStack {
                Image(systemName: "play")
                .resizable()
                .frame(width: 50, height: 70)
                    .padding(.leading, 8)
                VStack{

                    HStack {
                        Text("Esto es un titulo")
                            .bold()
                        Spacer()
                    }
                    HStack {
                        Text("Esto es una descrpcion")
                            .padding(.top, 8)
                        Spacer()
                    }
                }
                Button(action:{}){
                        Image(systemName: "star")
                        .font(.largeTitle)
                        .padding(.trailing, 16)
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
