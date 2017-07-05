//
//  DataCenter.swift
//  UIcollectionPractice
//
//  Created by 샤인 on 2017. 7. 3..
//  Copyright © 2017년 IosCamp. All rights reserved.
//

import Foundation

class DataCenter {
    static let center = DataCenter()
    
    var friendList = ["A","B","C","D","E","F","G","H"]
    
    
    
    func insertItems(at items:[IndexPath]){
        var sortedItems = items.sorted(by: < )
        let newArr:[String] = sortedItems.map{(indexPath) -> String in
            friendList[indexPath.item]

            
            }
        friendList.insert(contentsOf: newArr, at: sortedItems.last!.item - 1)
        
        print("\(friendList)")
    }
    
}


