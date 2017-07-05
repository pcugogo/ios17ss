//
//  favorintSnacks.swift
//  Error
//
//  Created by 샤인 on 2017. 6. 19..
//  Copyright © 2017년 IosCamp. All rights reserved.
//

import Foundation

class FavorintSnacks {
    let favoritesSnacks = [
        "Alice":"Chips",
        "Bob": "Licorice",
        "Eve": "pretzels"
    ]
    
    
    func buyFavoriteSnack(person: String, vendingMachine:VendingMachine) throws {
        let snackName = favoritesSnacks[person] ?? "Candy Bar"
        try vendingMachine.vend(itemNamed: snackName)
        vendingMachine.coinsDepsited = 8
        
        do {
            try buyFavoriteSnack(person: "Alice", vendingMachine: vendingMachine)
        }catch VendingMachineError.invalidSelection {
            print("Invalid Selection.")
        }catch VendingMachineError.outOfStock{
            print("Out of Stock.")
        }catch VendingMachineError.insufficientFunds(let coinsNeeded) {
            print("insufficientFunds. Please insert an additional \(coinsNeeded) coins.")
        }
    }
    
    var vendingMachine = VendingMachine()
 
    
}
