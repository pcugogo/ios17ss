//
//  Studunt.swift
//  gradepoint
//
//  Created by 샤인 on 2017. 5. 17..
//  Copyright © 2017년 IosCamp. All rights reserved.
//

import Foundation


// 이름 과목 배열 평균점수

class Studunt {  //학생정보에 무엇을 넣을꺼지?
    var name:String    //이름
    var average:Double? //학점
    var subjects:[Subject]?  //과목들
    
    init(name:String) {         //초기화
        self.name = name        //스튜던트 네임에 네임을 넣어줘
    }
    func addSubject(subjectName name:String,score:Int){ //과목을 추가할건데
        
        if subjects == nil{    // 만약에 과목 값에 값을 넣지 않으면 빈배열을 만들어줘
            subjects = []      // 선언해준곳 찾는게 머였지? ...커멘드 클릭
        }
        let sj:Subject = Subject(name: name, score: score) // sj에 이런 형식으로 담아줘
        subjects?.append(sj) //서브젝트에 sj를 추가
        
        
    }
}
