//
//  LoginViewModel.swift
//  iYourway
//
//  Created by Sofia Castillo on 11/12/19.
//  Copyright © 2019 Sofia Castillo. All rights reserved.
//

import Foundation

class LoginViewModel: ObservableObject {
    @Published var email = "sofia19castle@gmail.com"
    @Published var password = "123"
    @Published var name = "Sofia"
    @Published var lastName = "Castillo"
}
