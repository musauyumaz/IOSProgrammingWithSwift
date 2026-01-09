//
//  User.swift
//  ObjectOrientedProgramming
//
//  Created by MUSA UYUMAZ on 8.01.2026.
//

import Foundation

class User{
    
    var name : String
    var age : Int
    var job : String
    
    init(name: String, age: Int, job: String) {
        print("init çağırıldı")
        self.name = name
        self.age = age
        self.job = job
    }
}
