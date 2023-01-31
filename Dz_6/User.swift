//
//  User.swift
//  Dz_6
//
//  Created by Nika Abdulakhatova on 31.01.2023.
//

import Foundation

struct User {
    var firstName: String
    var lastName: String
    var phoneNumber: String
    var code: Country
    
    init(firstName: String, lastName: String, phoneNumber: String, code: Country) {
        self.firstName = firstName
        self.lastName = lastName
        self.phoneNumber = phoneNumber
        self.code = code
    }
}
