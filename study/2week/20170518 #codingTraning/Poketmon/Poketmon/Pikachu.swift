//
//  Pikachu.swift
//  Poketmon
//
//  Created by 샤인 on 2017. 5. 17..
//  Copyright © 2017년 IosCamp. All rights reserved.
//

import Foundation


class Pikachu:PoketMon { //피카츄
  
    init() {
        super.init(name: "피카츄", type: "전기")
        hp = 100
        skills = [["name":"전기충격","demage":10,"property":"전기"],["name":"몸통박치기","demage":20,"property":"노멀"]]
        catchHp = 100
    }
   
    override init(name: String, type: String) {
        super.init(name: name, type: type)
        

    }

    
    
}




		












//    func attack(toMoster monster:Pikachu, skill skillNum:Int){
//
//        let skill:[String:Any] = skills[skillNum] //인덱스 0전기충격
//        let skillName:String = skill["name"] as! String  //위에 네임타입을 Any로 해줘서 as!로 스트링으로 다운케스팅
//
//        /* as : 다운 케스팅*/
////        print("\(self.name)이 \(targetName)에게 \(skillName)으로 공격합니다.")
//
//        let skillDemage:Int = skill["demage"] as! Int
//        monster.hp -= skillDemage

//    }
