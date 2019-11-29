//
//  CustomButton.swift
//  iYourway
//
//  Created by Sofia Castillo on 11/12/19.
//  Copyright © 2019 Sofia Castillo. All rights reserved.
//

import SwiftUI

struct CustomButton: View {
    var text: String
    
    var body: some View {
        Button(action: {}) {
            HStack {
                Text(text)
                    .font(.body)
            }
            .frame(minWidth: 0, maxWidth: .infinity)
            .padding(.vertical, 12)
            .foregroundColor(.white)
            .background(Color(red: 33/255, green: 182/255, blue: 168/255, opacity: 1.0))
            .cornerRadius(30)
        }
        .shadow(radius: 3)
    }
}
