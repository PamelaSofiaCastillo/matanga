//
//  TabProfileView.swift
//  YourWay
//
//  Created by Sofia Castillo on 11/9/19.
//  Copyright © 2019 yourway. All rights reserved.
//

import SwiftUI

struct TabProfileView: View {
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    @ObservedObject var loginVM = LoginViewModel()
    
    var body: some View {
        ScrollView {
            VStack {
                Text("Nombre")
                    .bold()
                
                CustomTextField(placeholder: Text("Nombre")
                    .foregroundColor(.black), text: $loginVM.name)
                
                Text("Apellido")
                    .bold()
                
                CustomTextField(placeholder: Text("Nombre")
                    .foregroundColor(.black), text: $loginVM.lastName)
                
                Text("Correo")
                    .bold()
                
                CustomTextField(placeholder: Text("Nombre")
                    .foregroundColor(.black), text: $loginVM.email)
                
                Text("Contraseña")
                    .bold()
                
                CustomSecureField(placeholder: Text("Contraseña")
                    .foregroundColor(.black), text: $loginVM.password)
                
                Button(action: {
                    DispatchQueue.main.asyncAfter(deadline: .now()) {
                        self.presentationMode.wrappedValue.dismiss()
                    }
                }) {
                    HStack {
                        Text("Cerrar sesión")
                            .font(.body)
                    }
                    .frame(minWidth: 0, maxWidth: .infinity)
                    .padding(.vertical, 12)
                    .foregroundColor(.white)
                    .background(Color.gray)
                    .cornerRadius(30)
                }
                .shadow(radius: 3)
                .padding(.horizontal, 64)
            }
        }
        .padding(.top, 32)
    }
}

struct TabProfileView_Previews: PreviewProvider {
    static var previews: some View {
        TabProfileView()
    }
}
