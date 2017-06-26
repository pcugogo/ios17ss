//
//  File.swift
//  ClosurePractice
//
//  Created by 샤인 on 2017. 6. 23..
//  Copyright © 2017년 IosCamp. All rights reserved.
//

import Foundation

class File {
    
    
    func testAction(_ completion:Completion)  //(_ completion:(Bool)-> Void) 그냥 함수에 타입만 클로져
    {                                         //아까 Completion에 (Bool)-> Void)를 넣었다
        print("함수 실행")                       //Void적지않으면 그냥 튜플
//        let c = { (isSecess:Bool) in
//            if isSecess{
//                
//            }else{
//                
//            }
        if true{
            completion(true)
        }else{
            completion(false)
        }
    }
}
