//
//  VendingMachine.swift
//  Error
//
//  Created by 샤인 on 2017. 6. 19..
//  Copyright © 2017년 IosCamp. All rights reserved.
//

import Foundation

class VendingMachine {
 
    var inventory = [
        "Candy Bar" : Item(price: 12, count: 7),
        "Chips" : Item(price: 10, count: 4),
        "Pretzels" :Item(price: 7, count: 11)
    ]
    var coinsDepsited = 0
    
    func vend(itemNamed name:String) throws {
        guard let item = inventory[name] else {
            throw VendingMachineError.invalidSelection
        }
        guard item.count > 0 else {
            throw VendingMachineError.outOfStock
        }
        guard item.price <= coinsDepsited else{
            throw VendingMachineError.insufficientFunds(coinsNeeded: item.price - coinsDepsited)
        }
        coinsDepsited -= item.price
        
        var newItem = item
        newItem.count -= 1
        inventory[name] = newItem
        
        print("Dispensing \(name)")
        
    }

}
