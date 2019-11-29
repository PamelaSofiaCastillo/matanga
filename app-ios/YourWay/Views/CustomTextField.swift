//
//  CustomTextField.swift
//  iYourway
//
//  Created by Sofia Castillo on 11/12/19.
//  Copyright © 2019 Sofia Castillo. All rights reserved.
//

import SwiftUI

struct CustomTextField: View {
    var placeholder: Text
    @Binding var text: String
    var editingChanged: (Bool)->() = { _ in }
    var commit: ()->() = { }
    
    var body: some View {
        ZStack(alignment: .center) {
            if text.isEmpty { placeholder }
            TextField("", text: $text, onEditingChanged: editingChanged, onCommit: commit)
                .multilineTextAlignment(.center)
                .padding()
                .multilineTextAlignment(.center)
                .foregroundColor(.black)
        }
    }
}
