//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

//시험 점수를 받아서 해당 점수의 등급(Grade)을 반환해주는함수

func Grade(FromPoint point:UInt) -> String{
    
    var gradeValue:String = "F"
    
    switch point {
    case 95...100:
        
        gradeValue = "A+"
        
    case 90...95:
        gradeValue = "A"
    case 85...90:
        gradeValue = "B+"
    case 80...85:
        gradeValue = "B"
    case 75...80:
        gradeValue = "C+"
    case 70...75:
        gradeValue = "C"
    default:
        gradeValue = "F"
        }
    return gradeValue
}

Grade(FromPoint: 15)


// 등급을 받아 포인트로 전환
func GradeFrom(gradePoint grade:String) -> Double{
    
    var gradeValue:Double = 1.0
    
    switch grade {
    case "A+","a+":
        gradeValue = 4.5
    case "A":
        gradeValue = 4.0
    case "B+":
        gradeValue = 3.5
    case "B":
        gradeValue = 3.0
    case "C+":
        gradeValue = 2.5
    case "C":
        gradeValue = 2.0
    default:
        gradeValue = 1.0
        print("F")
    }
    return gradeValue
}

GradeFrom(gradePoint: "A+")
