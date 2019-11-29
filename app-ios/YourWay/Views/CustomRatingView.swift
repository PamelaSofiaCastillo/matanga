//
//  CustomRatingView.swift
//  YourWay
//
//  Created by Sofia Castillo on 11/21/19.
//  Copyright © 2019 yourway. All rights reserved.
//

import SwiftUI

struct CustomRatingView: View {
    @Binding var selected: Int
    var colorStar = Color(red: 33/255, green: 182/255, blue: 168/255, opacity: 1.0)
    
    var body: some View {
        HStack(spacing: 10) {
            ForEach(0..<5) { i in
                Image(systemName: "star.fill")
                    .resizable()
                    .frame(width: 40, height: 40)
                    .foregroundColor(self.selected - 1 >= i ? self.colorStar : .gray)
                    .onTapGesture {
                        self.selected = i + 1
                    }
            }
        }
    }
}
