//
//  SingleToneSample.swift
//  MethodEndFunction
//
//  Created by 샤인 on 2017. 6. 16..
//  Copyright © 2017년 IosCamp. All rights reserved.
//

import Foundation

class SingletonSample {
    static var random:SingletonSample = SingletonSample()
    var text = ""
}
//다른 뷰애서 여기 값이 들어오면 바꿀때마다 값이 바뀐다 저 값을 계속 뿌릴 수도 있고 좋다
