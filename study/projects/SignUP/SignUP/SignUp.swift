//
//  SignUp.swift
//  SignUP
//
//  Created by 샤인 on 2017. 5. 28..
//  Copyright © 2017년 IosCamp. All rights reserved.
//

import Foundation

class SignUp {
    var usersList = [UsersInformation]()
    
    func addUser(_ userObject:UsersInformation){
        usersList += [userObject]
    }

    
}
