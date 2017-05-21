//
//  JiWoo.swift
//  Poketmon
//
//  Created by 샤인 on 2017. 5. 19..
//  Copyright © 2017년 IosCamp. All rights reserved.
//

import Foundation

class JiWoo:Trainer{
    init(){
        super.init(name: "지우", gender: "남")
        level = 1
        pokemonList = []
    }
    //펫 체력을 회복시키는 아이템
    func inventory(itemList item:String) {
    let itemList:[[String:Any]] = [["hotDog":1,"effect":10], ["iceCream":1, "effect":20],["steak":5, "effect":100]] //핫도그:1,효과:10 이런식으로?
    
    }
//    func useItem{
//        var hotDog = inventory.(itemList: hotDog)
//    }
    
}

//아이템 갯수가 0이 아니라면 if 아이템을 사용 할 수있는데 { 몬스터.에이치피 + 이펙트)
