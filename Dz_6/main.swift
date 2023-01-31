//
//  main.swift
//  Dz_6
//
//  Created by Nika Abdulakhatova on 31.01.2023.
//

import Foundation

print("Hello, World!")

//Создать структуру User c параметрами имя, фамилия, номер телефона. Создать enum из стран с кодами телефонов. Добавить параметр code в  структуру User. Создать класс DataBase с параметром массив юзеров и функций распечатки информации всех юзеров, функий распечатки только по определенной стране. В main cделать так, чтобы пользователь вводил все данные через ридлайн. Введенные данные должны записаться в массив в классе DataBase. Для телефона сделать 2 ридлайна, один для указывания страны по названию, другой для ввода номера. В общей информации номер телефона должен распечатываться в таком виде: “+996777777777”. Запрос для ввода данных сделать несколько раз циклом, чтобы можно было ввести разные данные написать на языке свифт


enum Country: String, CaseIterable {
    case KG = "+996"
    case UK = "+44"
    case RF = "+7"
   
}


var database = Database(users: [])

while true {
    print("Ведите имя:", terminator: " ")
    let firstName = readLine()!
    
    print("Ведите фамилию:", terminator: " ")
    let lastName = readLine()!
    
    print("Введите код страны:", terminator: " ")
    let countryName = readLine()!
    guard let country = Country(rawValue: "+\(countryName)") else {
        print("Неправильный код страны")
        continue
    }
    
    print("Введите номер телефона:", terminator: " ")
    let phoneNumber = readLine()!

    let user = User(firstName: firstName, lastName: lastName, phoneNumber: phoneNumber, code: country)
    database.users.append(user)

    database.addUser(user: user)
    
    print("Завершить? (y/n)")
    let answer = readLine()!
    if answer != "y" {
        break
    }
    


}



//print("Введите код страны:", terminator: " ")
//let countryCode = readLine()!

//guard let filteredCountry = Country(rawValue: "+\(countryCode)") else {
//    print("Не правильный код старны")
//   return
//}

//print("Пользователь из \(filteredCountry.rawValue):")
//database.printUsersByCountry(country: filteredCountry)


print("Пользователи:")
database.printAllUsers()
