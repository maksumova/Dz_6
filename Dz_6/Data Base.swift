//
//  Data Base.swift
//  Dz_6
//
//  Created by Nika Abdulakhatova on 31.01.2023.
//

import Foundation


class Database {
    var users: [User]

    init(users: [User]) {
        self.users = users
    }
    
    func addUser(user: User){
        self.users.append(user)
    }

    func printAllUsers() {
        for user in users {
            //        return Имя: \(user.firstName).Номер: \(user.phoneNumber)
            print("Имя: \(user.firstName) \(user.lastName)")
            print("Номер: \(user.code.rawValue)\(user.phoneNumber)")
            print("+777889900")
        }
    }

    func printUsersByCountry(country: Country) {
        for user in users {
            if user.code == country {
        
                print("Имя: \(user.firstName) \(user.lastName)")
                print("Номер: \(user.code.rawValue)\(user.phoneNumber)")
                print("+766778899")
            }
        }
    }
}


