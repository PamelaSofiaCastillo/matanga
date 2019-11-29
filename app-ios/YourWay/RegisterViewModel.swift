//
//  RegisterViewModel.swift
//  iYourway
//
//  Created by Sofia Castillo on 11/12/19.
//  Copyright © 2019 Sofia Castillo. All rights reserved.
//

import Foundation

class RegisterViewModel: ObservableObject {
    @Published var email = ""
    @Published var password = ""
    @Published var name = ""
    @Published var lastName = ""
}
