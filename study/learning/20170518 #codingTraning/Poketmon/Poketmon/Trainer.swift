//
//  Trainer.swift
//  Poketmon
//
//  Created by 샤인 on 2017. 5. 18..
//  Copyright © 2017년 IosCamp. All rights reserved.
//

import Foundation

class Trainer{
    var name:String = ""
    var gender:String = ""
    var level:Int = 1 //레벨 올라가는거 트레이너가 레벨을 어떤 방법 또는 어떤 사람 어떤 기구를 통해 올릴까? 레벨이 오르면 잡기쉬워짐
    var pokemonList:[PoketMon] = []
    var ballList:[[String:Any]] = [["name":"redBall","damage":-50],["name":"blackBall","damage":-100]]
    var accumulatedExp:Int = 0
    
    init(name:String, gender:String) {
        self.name = name
        self.gender = gender
        
    }
    
    
    // 1마리 잡았다
    func catchMonster(catchedMonster:PoketMon){
       
        // 캐치hp가 0인 경우에 포켓몬 클래스를 상속받은 피카츄나 라이츄를 잡은 것으로 간주하므로 아래의 함수를 호출함
        if catchedMonster.catchHp == 0 {
            pokemonList.append(catchedMonster) //이렇게 추가하면 리스트에 포켓몬이 이름이 뜨나?
            accumulatedExp += 50
        }
    print(pokemonList)
    }
    func throwABall(toMonster:PoketMon, ballColor:Int){ //포켓몬스터클래스의 캐치에이치피를 볼을 던져 볼데미지로 깎기
        var ballType = ballList
            
            let ball:[String:Any] = ballList[ballColor]
            let ballName:String = ball["name"] as! String  //위에 네임타입을 Any로 해줘서 as!로 스트링으로 다운케스팅
            
            /* as : 다운 케스팅*/
            print("\(self.name)이 \(toMonster.name)에게 \(ballName)을 던집니다.")
            
            let ballDemage:Int = ball["demage"] as! Int
            toMonster.catchHp -= ballDemage
    
        
    //포켓몬리스트에 포켓몬이 추가 될때마다 경험치 50을 주고/  100까지 차면 레벨 2, 150 3, 200 4, 300 5 일단 맥스레벨 5까지
    func levelUp(_:Int) ->Int {
            var acExp = accumulatedExp
            
            if acExp == 50 {
                level += 1
            }
            if acExp == 150 {
                level += 1
            }
            if acExp == 200 {
                level += 1
            }
            if acExp == 300 {
                level += 1
            }
            return acExp
        }
    

        
    }
   
}



