//: Playground - noun: a place where people can play

import UIKit

//절대값 구하기
func absoluteValue (number num: Int) -> Int {
    var absolute:Int = num
    
    if absolute < 0{
       absolute = num * -1
    }
    return absolute //결과물을 리턴으로 찍어준다 리턴은 반환값을 어떤 값으로 할 것인지 정해준다
}

absoluteValue(number: -150)


//짝수 구하기

func evenNumberCheck(number num:Int) -> Bool{
    var checkNumber:Int = num  //호출되는 숫자를 체크넘버로 담아준다
    var resultNumber:Bool = true //리턴값을 불값으로 주기위해 확인숫자 초기값을 트루로
    
    if checkNumber % 2 == 0{    //호출되는 숫자에 2를 나누었을때 나머지가 0이면
        resultNumber = true     //트루로 확인
    }else{                      //나머지가 0이 아니면
        resultNumber = false    //펄스로 확인
    }
    return resultNumber         //확인숫자로 값을 반환
}

evenNumberCheck(number: 2)



//영화표값구하기 조조할인(10:00까지) -10% 청소년할인 -10% 기본 값 9000원 중복할인이 되는 경우
//아규먼트레이블 시작시간 Int,성인 인원 Int, 청소년 인원 Int 리턴값 Int

func mTicketPrice(startTime time: Int, adultCount aCount: Int, teenagerCount tCount: Int) -> Int{
    let basicPrice = 9000                 //기본값 9000원
    var adultPrice = 0                    //기본값 0명
    var teenagerPrice = 0                 //기본값 0명
    
    if time <= 10 {                       //영화시간이 10시거나 10시보다 빠른 시간일 경우
        adultPrice = basicPrice * aCount * 9 / 10   // 기본가격 * 어른인원수 * 0.9(0.9는 형변환해야됨) 어른 10% 할인
        teenagerPrice = basicPrice * tCount * 8 / 10 // 기본가격 * 청소년인원수 * 0.8 청소년 20% 할인
    }else{                                            //이 경우가 아니면
        adultPrice = basicPrice * aCount              //어른가격은 9000 * 인원수
        teenagerPrice = basicPrice * tCount * 9 / 10 //청소년 가격은 9000 * 0.9
    }
    
    return adultPrice + teenagerPrice        //어른가격 + 청소년 가격으로 반환
}

mTicketPrice(startTime: 1, adultCount: 1, teenagerCount: 1)

//지폐별 갯수
//금액을 입력받고 100원, 500원, 1,000원, 5,000원, 10,000원, 50,000원권으로 각각 몇 장씩 나눠지는지 프린트

//func countChanges(Received money:UInt) -> (count50000Won:UInt, count10000Won:UInt, count5000Won:UInt, count1000Won:UInt, count500Won:UInt, count100Won:UInt) {
//    var remainMoney = money
//    
//   
//    var count50000Won:UInt = 0
//    var count10000Won:UInt = 0
//    var count5000Won:UInt = 0
//    var count1000Won:UInt = 0
//    var count500Won:UInt = 0
//    var count100Won:UInt = 0
//    
//    if remainMoney >= 50000 {
//        count50000Won = remainMoney / 50000
//        remainMoney = remainMoney % 50000
//    }
//    if remainMoney >= 10000 {
//        count10000Won = remainMoney / 10000
//        remainMoney = remainMoney % 10000
//    }
//    if remainMoney >= 5000 {
//        count5000Won = remainMoney / 5000
//        remainMoney = remainMoney % 5000
//    }
//    if remainMoney >= 1000 {
//        count1000Won = remainMoney / 1000
//        remainMoney = remainMoney % 1000
//    }
//    if remainMoney >= 500 {
//        count500Won = remainMoney / 500
//        remainMoney = remainMoney % 500
//    }
//    if remainMoney >= 100 {
//        count100Won = remainMoney / 100
//        remainMoney = remainMoney % 100
//    }
//    
//    return (count50000Won, count10000Won, count5000Won, count1000Won, count500Won, count100Won)
//    
//}

//countChanges(Received: 15500)

func countChanges(Received money:UInt) -> (count50000Won:UInt, count10000Won:UInt, count5000Won:UInt, count1000Won:UInt, count500Won:UInt, count100Won:UInt) {
    var remainMoney = money
    
    var count50000Won:UInt = 0
    var count10000Won:UInt = 0
    var count5000Won:UInt = 0
    var count1000Won:UInt = 0
    var count500Won:UInt = 0
    var count100Won:UInt = 0
    
    if remainMoney >= 50000 {
        count50000Won = remainMoney / 50000        //카운트오만원에 머니값 / 5만을 담아준다
        remainMoney = remainMoney % 50000          //들어온 값을 50000으로 나눠 나머지를 구한다 나머지를 다시 리메인에 담아
    }                                              //밑으로 가게 한다
    if remainMoney >= 10000{                       //여기서 5만으로 나누고 남은 숫자를
        count10000Won = remainMoney / 10000        //만으로 남아 카운트에 담아주고
        remainMoney = remainMoney % 10000          //10000으로 나눠 나머지 값을 구하고 리메인에 담아 밑으로 보내준다
    }
    if remainMoney >= 5000{
        count5000Won = remainMoney / 5000
        remainMoney = remainMoney % 5000
    }
    if remainMoney >= 1000{
        count1000Won = remainMoney / 1000
        remainMoney = remainMoney % 1000
    }
    if remainMoney >= 500{
        count500Won = remainMoney / 500
        remainMoney = remainMoney % 500
    }
    if remainMoney >= 100{
        count100Won = remainMoney / 100
        remainMoney = remainMoney % 100
    }
    return (count50000Won, count10000Won, count5000Won, count1000Won, count500Won, count100Won)
}
countChanges(Received: 15500)
// 5. 윤년구하기
//서력 기원 연수가 4로 나누어떨어지는 해는 윤년으로 한다.(2004년, 2008년, 2012년, 2016년, 2020년, 2024년 …)
//이 중에서 100으로 나누어떨어지는 해는 평년으로 한다.(1900년, 2100년, 2200년, 2300년, 2500년 …)
//그중에 400으로 나누어떨어지는 해는 윤년으로 둔다.(1600년, 2000년, 2400년 …)
//400>100>4

//연도를 입력받고 윤년인지 평년인지 프린트.

//if 값 % 4 == 0 || 값 % 400 == 0 {프린트 윤년} 스트링
//else if 값 % 100 == 0 {프린트 평년}

func leapYear(countYear year:Int) -> String {
    
    var cYear = year
    var resultYear = ""
    
    if cYear % 4 == 0 && cYear % 100 == 0 && cYear % 400 == 0{ //4,100,400으로 나누어 나머지가 0일 경우 윤년
        resultYear = "윤년"
        
    }else if cYear % 4 == 0 && cYear % 100 == 0 {     //4,100으로 나누어 0이 남으면 평년
        resultYear = "평년"
    }else{                                             //그 밖에는 다 평년
        resultYear = "평년"
    }
    
    return resultYear
    
}

leapYear(countYear: 2400)
