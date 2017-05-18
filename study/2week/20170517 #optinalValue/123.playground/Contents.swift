//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"
var sI :[Int] = [17,2,3,4]
print("\(sI[0])")


//Array
    var name:Array<Int> = [1,2,3,4]
    name[0]
//set
    var oddDigits : Set = [1, 3, 5, 7, 9]
    let evenDigits : Set = [2, 4, 6, 8]
    let primeDigts : Set = [2, 3, 5, 7]
    
    oddDigits.intersection(evenDigits)
    oddDigits.symmetricDifference(primeDigts)
    oddDigits.union(evenDigits)
    oddDigits.sorted()

var index = 0

while index < 10     //0~ 9까지 10번 반복
{
    print("현재 횟수는 \(index) 입니다")
    index += 1
}






//함수 2개 추가 친구 프린트 프렌드
var friendList :[String]?
func addFriend(name:String){
    if friendList == nil {
        friendList = []
    }
    
    friendList!.append(name)
    
}

func printFriendList(){
    
    if let friends:[String] = friendList {
        
        for friendName in friends {
            print(friendName)
        }
    }
}



class Hat {
    var color:String    //옵셔널이 사용되면 그자체로 초기화 되지만
                        //이상태로는 밑에처럼 init으로 초기화 해야된다
    init(cccccccc:String) {
        color = cccccccc
    }

}

    
