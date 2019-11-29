//
//  ContentView.swift
//  YourWay
//
//  Created by Alumnos on 11/9/19.
//  Copyright © 2019 yourway. All rights reserved.
//

import SwiftUI

class ValidateUser: ObservableObject  {
    @Published var showResults:Bool = validateUserFromDataCore()
}

struct ContentView: View {
    @State private var flag = false
    var body: some View {
        ViewApp().environmentObject(ValidateUser())
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct ViewApp: View {
    @EnvironmentObject var validateUser: ValidateUser
    
    var body: some View {
        ZStack {
            Color.green
                .edgesIgnoringSafeArea(.all)
            
            if validateUser.showResults {
                HomeView(loginVM: LoginViewModel())
            } else {
                LoginView(loginVM: LoginViewModel())
            }
        }
    }
}

func validateUserFromDataCore() -> Bool {
    return false
}
