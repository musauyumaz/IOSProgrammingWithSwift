//
//  User.swift
//  ObjectOrientedProgramming
//
//  Created by MUSA UYUMAZ on 8.01.2026.
//

import Foundation


enum UserType{
    case admin
    case user
    case unauthorized
}

class User{
    var name : String
    var age : Int
    var job : String
    var type : UserType
    private var hairColor: String = "Black"
    
    init(name: String, age: Int, job: String, type: UserType) {
        print("init çağırıldı")
        self.name = name
        self.age = age
        self.job = job
        self.type = type
    }
    
    func exampleFunction(){
        print("exampleFunction is called")
    }
    
    private func testFunction(){
        print("testFunction is called")
    }
    
    func getYourHairColor() -> String{
        return self.hairColor
    }
    
    //Access Levels
    //open, public, internal, fileprivate, private
}
