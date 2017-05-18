//
//  Studunt.swift
//  gradepoint
//
//  Created by 샤인 on 2017. 5. 17..
//  Copyright © 2017년 IosCamp. All rights reserved.
//

import Foundation


// 이름 과목 배열 평균점수

class Studunt {
    var name:String
    var average:Double?
    var subjects:[Subject]?
    
    init(name:String) {
        self.name = name
    }
    func addSubject(subjectName name:String,score:Int){
        
        if subjects == nil{
            subjects = []      // 선언해준곳 찾는게 머였지? ...커멘드 클릭
        }
        let sj:Subject = Subject(name: name, score: score)
        subjects?.append(sj)
        
        
    }
}
