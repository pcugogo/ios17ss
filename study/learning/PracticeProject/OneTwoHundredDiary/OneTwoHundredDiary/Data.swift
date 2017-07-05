//
//  Date.swift
//  OneTwoHundredDiary
//
//  Created by 샤인 on 2017. 6. 14..
//  Copyright © 2017년 IosCamp. All rights reserved.
//

import Foundation

enum Month:Int{
  case jan,fed,mar,apr,may,jun,jul,aug,sep,oct,nov,dec

}

    
func numberOf(Month:Int) -> String{  //이렇게 해놓으면 스태틱처럼 항상 메모리에 할당되있다 인스턴스화하면 불릴때만 실행된다 이앱에서는 항상 쓰여서 메모리에 할당되어있어도 상관없다
    
    switch Month {
    case 1:
        return "January"
    case 2:
        return "February"
    case 3:
        return "March"
    case 4:
        return "April"
    case 5:
        return "May"
    case 6:
        return "June"
    case 7:
        return "July"
    case 8:
        return "August"
    case 9:
        return "September"
    case 10:
        return "October"
    case 11:
        return "November"
    case 12:
        return "December"
    default:
        return ""
        
    }
}
