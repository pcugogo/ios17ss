//: Playground - noun: a place where people can play

import UIKit
//변수 공부
var str = "Hello, playground"

print("print \(str)")

var name:String = "키키"

print("ddddd \(name)")

name = "야곰"

print("안녕 \(name)")

print("Name : \(name)\n")

print("Name3 : \(name)\n")

print("int의 최대 수 \(Int.max)")
print("int의 최소 수 \(Int.min)")

print("Uint의 최대 수 \(UInt.max)")
print("Uint의 최대 수 \(UInt.min)")

let name10 = "z"

var coin:(Int,Int,Int,Int) = (3,1,5,3)
print("10원짜리 : \(coin.0)")
print("50원짜리 : \(coin.1)")
print("100원짜리 : \(coin.2)")
print("500원짜리 :  \(coin.3)")

var p:(name:String, age:Int, height:Int)
print("hi \(name)")

//함수 공부
func printName(name printStr:String) ->Int
    {
        print(printStr)
        return 0
}
printName(name: "보라돌이")



func addInt(num1 firstNum:Int, num2 secondNum:Int) -> Int
{
    return firstNum + secondNum
}
var totalNum:Int = addInt(num1: 100, num2: 498)


func average() -> Double
{
    return Double(totalNum)/2.0
}
average()

//소개
func introduce(name:String,age:Int,local:String){
    print("안녕하세요 이름은 \(name)이고 나이는\(age),사는 지역은\(local)입니다")
}

introduce(name:"park",age:26,local:"서울")

func fName() -> Int{
    return 3
}
fName()

let i:Int = fName()
print(i)
//펑션호출하면 리턴값으로 누르면 나온다 계산하면 닶을 반환해준다
func getNumber(firstNum num1:Int) -> Int {  //기본타입 함수
    return num1
}
func getNumber(num1:Int) -> Int{   
    return num1
}
func getNumber() -> Int {
    let num1:Int = 22
    return num1
}

func getNumber(firstNum num1:Int, secondNum num2:Int) -> Int {
    return num1 + num2
}
func sumnumber(num1:Int, num2:Int = 5) -> Int {
    return num1 + num2
}

//함수 이름이 다 다른건가? 아규먼트레이블이나 파라미터가 다르면 다른 함수(function)다
//함수 문법 외우기 함수 메서드
