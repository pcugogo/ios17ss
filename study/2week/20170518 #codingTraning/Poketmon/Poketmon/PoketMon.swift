//
//  PoketMon.swift
//  Poketmon
//
//  Created by 샤인 on 2017. 5. 18..
//  Copyright © 2017년 IosCamp. All rights reserved.
//

import Foundation
class PoketMon {
    let name:String
    var hp:Int = 100
    let type:String
    var skills:[[String:Any]]?
    var exp:Int = 0
    var onwerTrainer:Trainer?
    var catchHp:Int = 100
//    var itemList:[[String:Int]] = [[:]]
    //포획때 스트롱 마인드 깎이면 잡는거 트레이너 포켓볼스킬에 데미지

    
    init(name:String, type:String) {
        self.name = name
        self.type = type
       
    }
    
    func attack(toMoster monster:PoketMon, skill skillNum:Int)
    {
        if let skillList = skills {
            
        let skill:[String:Any] = skillList[skillNum]
        let skillName:String = skill["name"] as! String  //위에 네임타입을 Any로 해줘서 as!로 스트링으로 다운케스팅
        
        /* as : 다운 케스팅*/
                print("\(self.name)이 \(monster.name)에게 \(skillName)으로 공격합니다.")
        
        let skillDemage:Int = skill["demage"] as! Int
        monster.hp -= skillDemage
        }
    }
    
    

}
