//
//  Pairi.swift
//  Poketmon
//
//  Created by 샤인 on 2017. 5. 18..
//  Copyright © 2017년 IosCamp. All rights reserved.
//

import Foundation

class Pairi {
    var name:String
    var hp:Int
    var type:String
    var skills:[[String:Any]] = [["name":"불꽃세레","demage":20],["name":"할퀴기","demage":10]]
    
    init() {
        name = "라이츄"
        hp = 100
        type = "전기"
    }
    
    func attack(toMoster monster:Pairi, skill skillNum:Int)
    {
        
        let skill:[String:Any] = skills[skillNum]
        let skillName:String = skill["name"] as! String  //위에 네임타입을 Any로 해줘서 as!로 스트링으로 다운케스팅
        
        /* as : 다운 케스팅*/
        //        print("\(self.name)이 \(targetName)에게 \(skillName)으로 공격합니다.")
        
        let skillDemage:Int = skill["demage"] as! Int
        monster.hp -= skillDemage
        
    }
    
    
}
