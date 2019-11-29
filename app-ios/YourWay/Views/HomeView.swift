//
//  HomeView.swift
//  YourWay
//
//  Created by Sofia Castillo on 11/19/19.
//  Copyright © 2019 yourway. All rights reserved.
//

import SwiftUI

struct HomeView: View {
    @ObservedObject var loginVM = LoginViewModel()
    @State private var selection = 1
    
    var body: some View {
        TabView (selection: $selection) {
            TabEventView()
                .tabItem(){
                Image("tab1")
                Text("Eventos")
            }.tag(1)
            TabInvitationView()
                .tabItem(){
                Image("tab2")
                Text("Invitaciones")
            }.tag(2)
            TabFriendView()
                .tabItem(){
                Image("tab3")
                Text("Amigos")
            }.tag(3)
            TabPlaceView()
                .tabItem(){
                Image("tab4")
                Text("Lugares")
            }.tag(4)
            TabProfileView()
                .tabItem(){
                Image("tab5")
                Text("Perfil")
            }.tag(5)
        }
        .navigationBarTitle(Text("\(selection == 1 ? "Creado por mi" : selection == 2 ? "Como invitado" : selection == 3 ? "Mis amigos" : selection == 4 ? "Lugares cercanos" : "Datos de la cuenta")"))
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView(loginVM: LoginViewModel())
    }
}
