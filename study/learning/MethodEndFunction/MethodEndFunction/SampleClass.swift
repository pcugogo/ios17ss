//
//  SampleClass.swift
//  MethodEndFunction
//
//  Created by 샤인 on 2017. 6. 16..
//  Copyright © 2017년 IosCamp. All rights reserved.
//

import Foundation

class SampleClass{
    
    class func typeMethodToOvverride(){  //클래스안에 들어오면 다 클래스
        print("타입메소드인데 오버라이드되는애")
    }
    
    static func typeMethod() { //스태틱 함수안에 있으면 다 스태틱
        print("타입메소드")
    }
    func instanceMethod(){
        print("인스턴스메소드")
    }
}

func function2(){
    print("함수")
}
