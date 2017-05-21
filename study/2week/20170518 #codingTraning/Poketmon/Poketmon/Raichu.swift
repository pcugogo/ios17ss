//
//  Richu.swift
//  Poketmon
//
//  Created by 샤인 on 2017. 5. 17..
//  Copyright © 2017년 IosCamp. All rights reserved.
//

import Foundation

class Raichu:Pikachu {
    
    override init() {    //오버라이드가 불러오는 명령인 것같다 그리고 슈퍼는 불러온 곳의 무언가를 쓰겠다 라는 뜻인것같다
        super.init()
        hp = 210
        skills = [["name":"10만볼트","demage":100],["name":"몸통박치기","demage":20]]
    }
    
   
     
}
