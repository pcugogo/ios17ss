//
//  Matrix.swift
//  SubScriptPractice
//
//  Created by 샤인 on 2017. 7. 11..
//  Copyright © 2017년 IosCamp. All rights reserved.
//

import Foundation

struct Matrix {
    let rows:Int, columns:Int
    var grid: [Double]
    init(rows:Int, columns:Int) {
        self.rows = rows
        self.columns = columns
        grid = Array(repeating: 0.0, count: rows * columns)
    }
    subscript(row:Int, column:Int) -> Double{
        get{
            return grid[(row * columns) + column]
        }
        set{
            grid[(row * columns) + column] = newValue
        }
    }
}

