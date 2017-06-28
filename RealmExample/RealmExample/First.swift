//
//  First.swift
//  RealmExample
//
//  Created by 샤인 on 2017. 6. 28..
//  Copyright © 2017년 giftbot. All rights reserved.
//

import Foundation
import RealmSwift

class First: Object {
    
    let name:String = ""
    let ignore:String = ""
    
  override static func ignoredProperties() -> [String] {
    return ["ignore"]
  }
    
    class second{
        let name:String = ""
    }
}
