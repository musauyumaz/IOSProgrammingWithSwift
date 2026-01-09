//
//  main.swift
//  ObjectOrientedProgramming
//
//  Created by MUSA UYUMAZ on 8.01.2026.
//

import Foundation

let user = User(name: "Musa", age: 26, job: "Software Developer", type: .admin)
let user2 = User(name: "Nazlı Gül", age: 23, job: "Psychologist", type: .user)

print("\(user.name) is \(user.age) years old and works as a \(user.job).")
print("\(user2.name) is \(user2.age) years old and works as a \(user2.job).")

user.exampleFunction()

