//: Playground - noun: a place where people can play

import UIKit


//class Studunt {
//    var name:String
//    var average:Double?
//    var subjects:[Subject]?
//    
//    init(name:String) {
//        self.name = name    //self는 클래스가 객체가 된 후(미래를 봤을때)에 클래스 내부에 선언된 프로퍼티와 메소드를 접근 가능합니다.
//    }
//    func addSubject(subjectName name:String,score:Int){
//        
//        if subjects == nil{
//            subjects = []      // 선언해준곳 찾는게 머였지? ...커멘드 클릭
//        }
//        let sj:Subject = Subject(name: name, score: score)
//        subjects?.append(sj)
//        
//        
//    }
//}

class Subject{
    let name:String
    var score:Int
    
    init(name:String, score:Int){
        
        self.name = name
        self.score = score
    }
}

class Studunt{
    var name:String
    var average:Int?
    var subject:String?
    
    init(name:String){
        self.name = name
    }
    
    func addSubject(subjectName name:String, score:Int){
        
        
        
    }
    
}

class ScoreManager{
    func average(forStudunt studunt:String) -> Double {
        
        return 0.0
    }
}


