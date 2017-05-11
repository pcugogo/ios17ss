//: Playground - noun: a place where people can play

import UIKit

func hello(hi name:String) -> String {
       return "Hello \(name)!"
}
hello(hi: "choi") //함수명 hello에 있는 아규먼트레이블(인수이름표) hi에 choi를 넣어줘라

func hello1(name: String) -> String {
    return "Hello \(name)!"
}
hello1(name: "choi") //함수명 hello에 있는 아규먼트레이블 name(원래는 파라미터명(매개변수명) 아규먼트레이블 없어서)에 choi를 넣어줘라

func hello3() -> String {
    let name:String = "park"
    return name   //위의 네임을 리턴해준다
}

hello3() //리턴값은 name이니깐 name에 스트링타입으로 담긴 "park"

func printName (firstName name:String, lastName name2:String) ->String {
    return ("제 이름은\(name + name2)입니다.") //아규먼트레이블 사용
}                                  //AgumentLabel: 함수 호출시 사용 되는 변수명

printName(firstName: "cw", lastName: "p") //아규먼트레이블(인수레이블)이 생략된 경우 파라미터레이블(매개변수명)이 아규먼트레이블로 사용된다

func printName1 (firstName:String, lastName:String) ->String {
    return ("제 이름은 \(firstName + lastName)입니다")
}

printName1(firstName: "cu", lastName: "p")

//반환타입

func printName() -> String{
    return "my name is cw"
}



printName()

func printName0(){
    print("my name is cw0")
}
printName0()

func printName1(name:String = "cw"){
    print("my name is \(name)1")
}

printName1(name: "cw")

func printName2(explain str:String, name str2:String) -> String{
    return str + str2
}

printName2(explain: "안녕하세요 이름은", name: "cw 입니다" )

func printName(explain str: inout String) -> String{
    str += "park"
    return str
}

func Version(language:String, version:Double) -> String{
    return " \(language): \(version) "
}

Version(language: "swift", version: 3.0)

