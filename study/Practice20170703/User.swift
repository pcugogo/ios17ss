//
//  User.swift
//  Practice20170703
//
//  Created by 샤인 on 2017. 7. 3..
//  Copyright © 2017년 IosCamp. All rights reserved.
//

import Foundation

struct User {
    let userId:String
    let userPassword:String
    var userData:[Person]
    
    
    var dictionary:[String:Any]{
        get{
            
            var tempData:[[String:Any]] = []
            
            
            for person in userData{
                tempData.append(person.dictionary)
            }
            
            
            return["user_id":userId,"user_password":userPassword,"user_data":tempData]
        }
    }
    
    
    init(dictionary:[String:Any]) {
        self.userId = dictionary["user_id"] as! String
        self.userPassword = dictionary["user_password"] as! String
        self.userData = [] //펄슨데이터가 하나씩 채워진다?
        
        
        
        if let container:[[String:Any]] = dictionary["user_data"] as? [[String:Any]]{
            for personData in container{
                userData.append(Person.init(data: personData))
            }
        }
    }
    
    struct Person {
        let person_id:Int
        let person_name: String
        let person_gender:Gender
        var person_age:Int
        
        var dictionary: [String:Any]{
            return ["person_id":person_id,"person_name":person_name,"person_gender":person_gender.rawValue,"person_age":person_age]
        }
        
        init(data:[String:Any]){
            self.person_id = data["person_id"] as! Int
            self.person_name = data["person_name"] as! String
            self.person_gender = Gender.init(rawValue: data["person_gender"] as! Int)!
            self.person_age = data["person_age"] as! Int
            
        }
    }
    
}

enum Gender:Int {
    case Man // 0
    case Woman
}
