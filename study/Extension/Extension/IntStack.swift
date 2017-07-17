//
//  IntStack.swift
//  Extension
//
//  Created by 샤인 on 2017. 7. 11..
//  Copyright © 2017년 IosCamp. All rights reserved.
//

import Foundation

struct IntStack {
    var items = [Int]()
    
    mutating func push(_ item:Int) {
        items.append(item)
    }
    mutating func pop() -> Int{
        return items.removeLast()
    }
}

struct Stack<T> {
    var items = [T]()
    mutating func push(_ item:T) {
        items.append(item)
    }
    mutating func pop() -> T{
        return items.removeLast()
    }

}
