//: Playground - noun: a place where people can play

import UIKit

func isEven(number num:Int) -> Bool{ //외부이름 넘버 내부이름 축약 num

    if (num % 2) == 0 {
        return true
    }else{
        return false
        }
   }

let evenNumber:Bool = isEven(number: 2)

print(evenNumber)




//미팅 상대남자 조건: 몸무게,키,연봉
let p:(height:Double,weight:Double,money:Int) = (1.1, 1.4, 1000)

func isAbleMeetting(person:(height:Double, weight:Double, money:Int)) -> Bool
{
    if person.height > 170 && person.weight <= 70 && person.money >= 2000 {
        print("퍼펙트 무조건 소개!!")
        return true
    }else if (person.height >= 170 && person.weight <= 70) || person.money >= 2000{
        print("어쩃든 소개 가능!!")
        return true
    }else if person.height >= 170 || person.weight <= 70 || person.money >= 2000{
        print("받아는 볼께")
        return true
    }else{
        print("안받아!")
        return false
    }
}




//두 수의 값을 스위치
func swapToInt(_ num1: inout Int, _ num2: inout Int){
    
    let temp:Int = num1
    num1 = num2
    num2 = temp
}

//앞에수에서 뒤에수를 뺴는 함수
//만약 뒤에수가 크다면 swapToInt함수를 사용해서 값을 스위치 시킨다.
func minus(firstNum num1:Int, secondNum num2:Int) -> Int{
    var vNum1 = num1
    var vNum2 = num2
    
    if vNum2 > vNum1 {
        
        swapToInt(&vNum1,&vNum2)
    }
    
    return vNum1 - vNum2
}

print(minus(firstNum: 5, secondNum: 5))
print(minus(firstNum: 10, secondNum: 5))
//홀짝프린트 함수
func printEvenOROdd(num:Int){
    if num%2 == 0
    {
        print("짝수입니다.")
    }else{
        print("홀수입니다")
    }
}


//절대값 프린트
func absolute(num:Int) -> Int{
    var absoluteNum:Int = num
    
    if absoluteNum < 0 {
        absoluteNum *= -1
    }
    return absoluteNum
}

//영화표값 계산
//기본가격: 9000원
//10시까지 조조: -10%
//청소년 -10%
//아규먼트레이블 영화시간 성인인원 청소년인원

func mTicketPrice(startTime time:UInt, adulteCount aCount:Int, teenagerCount tCount:Int) -> UInt{
    
    var retPrice:UInt = 0 //결과 가격
    var bPrice:Double = 9000 //기본가격
    if time <= 10 {       //시간
        bPrice = bPrice * 0.9  //할인 10%
    }
    retPrice = UInt(bPrice * Double(aCount)) //함수 내부에는 파라미터로 입력해준다(aCount)
    if tCount > 0 {
        bPrice = bPrice * 0.9
        let teenTotal:Double = Double(tCount) * bPrice
        retPrice = retPrice + UInt(teenTotal) //연산을 하려면 앞 뒤 타입이 같아야함
    }
    
    return retPrice
    
}

mTicketPrice(startTime: 9, adulteCount: 0, teenagerCount: 1)


