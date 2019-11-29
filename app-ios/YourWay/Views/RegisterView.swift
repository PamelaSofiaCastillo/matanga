//
//  RegisterView.swift
//  iYourway
//
//  Created by Sofia Castillo on 11/12/19.
//  Copyright © 2019 Sofia Castillo. All rights reserved.
//

import SwiftUI

struct RegisterView: View {
    @ObservedObject var registerVM = RegisterViewModel()
    
    var body: some View {
        
        ZStack {
            Color.green
                .edgesIgnoringSafeArea(.all)
            
            VStack {
                Image("human-handsup")
                    .resizable()
                    .frame(width: CGFloat(150.0), height: CGFloat(150.0))
                
                CustomTextField(placeholder: Text("Nombre")
                    .foregroundColor(.white), text: $registerVM.name)
                
                CustomTextField(placeholder: Text("Apellido")
                    .foregroundColor(.white), text: $registerVM.lastName)
                
                CustomTextField(placeholder: Text("Correo")
                    .foregroundColor(.white), text: $registerVM.email)
                
                CustomSecureField(placeholder: Text("Contraseña")
                    .foregroundColor(.white), text: $registerVM.password)
                
                CustomButton(text: "Siguiente")
                    .padding(.top, 16)
                    .padding(.horizontal, 64)
            }
        }
        
    }
}

struct RegisterView_Previews: PreviewProvider {
    static var previews: some View {
        RegisterView()
    }
}
