//
//  PlaygroundView.swift
//  YourWay
//
//  Created by Sofia Castillo on 11/22/19.
//  Copyright © 2019 yourway. All rights reserved.
//

import SwiftUI

struct PlaygroundView: View {
    var body: some View {
        //HStack {
        //    VStack {
        //        Image(systemName: "person.fill")
        //            .resizable()
        //            .frame(width: 70, height: 70, alignment: .top)
        //            .padding(.leading, 16)
        //            .padding(.top, 8)
        //        Spacer()
        //    }
        //    VStack {
        //        HStack {
        //            Text("Nombre")
        //                .font(.system(size: 20))
        //                .bold()
        //                .lineLimit(2)
        //                .padding(.top, 4)
        //            Spacer()
        //        }
        //        HStack {
        //            Text("Apellido")
        //                .font(.system(size: 15))
        //                .lineLimit(2)
        //                .padding(.top, 8)
        //            Spacer()
        //        }
        //        HStack {
        //            Text("Correo")
        //                .font(.system(size: 15))
        //                .lineLimit(2)
        //                .padding(.top, 8)
        //            Spacer()
        //        }
        //        Spacer()
        //    }
        //    .padding(.leading, 8)
        //    .padding(.trailing, 16)
        //}
        
        VStack {
            Image(systemName: "person.fill")
                .resizable()
                .frame(width: 150, height: 150)
            Text("Name")
                .bold()
                .font(.largeTitle)
            Text("Lastname")
            Text("Email")
        }
    }
}

struct PlaygroundView_Previews: PreviewProvider {
    static var previews: some View {
        PlaygroundView()
    }
}
