//
//  NewPlayGroundView.swift
//  iNews
//
//  Created by Gabriela Antezana on 11/25/19.
//  Copyright © 2019 Sofia Castillo. All rights reserved.
//

import SwiftUI

struct NewPlayGroundView: View {
    var body: some View {
        
        VStack {
            HStack {
                Image(systemName: "doc.text.fill")
                    .resizable()
                    .frame(width: 50, height: 70)
                    .padding(.leading, 8)
                VStack {
                    HStack {
                        Text("Titulo New")
                        .bold()
                        
                    Spacer()
                    }
                    HStack {
                        Text("Descripcion New")
                            .padding(.top, 8)
                            .lineLimit(2)
                        
                      Spacer()
                    }
                }
               
                Button(action: {}){
                    Image(systemName: "star")
                        .font(.largeTitle)
                        .padding(.trailing,16)
                    
                }
            }
            Spacer()
        }
        
        
        
        
    }
}

struct NewPlayGroundView_Previews: PreviewProvider {
    static var previews: some View {
        NewPlayGroundView()
    }
}
