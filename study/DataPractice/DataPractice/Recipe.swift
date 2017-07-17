//
//  Recipe.swift
//  DataPractice
//
//  Created by 샤인 on 2017. 7. 16..
//  Copyright © 2017년 IosCamp. All rights reserved.
//

import Foundation

struct Recipe {
    var recipeID:Int
    var name:String
    var shortDescription:String
    var time:Int
    var cost:Int
    var drink:String
    var ingrediants:String
    var detail:String
    
    init(dictionary:[String:Any]){
        self.recipeID = dictionary["recipeID"] as! Int
        self.name = dictionary["name"] as! String
        self.shortDescription = dictionary["shortDescription"] as! String
        self.time = dictionary["time"] as! Int
        self.cost = dictionary["cost"] as! Int
        self.drink = dictionary["drink"] as! String
        self.ingrediants = dictionary["ingrediants"] as! String
        self.detail = dictionary["detail"] as! String
    }
}

enum RecipeData:String{
    case recipeID = "recipeID"
    case name = "name"
    case shortDescription = "shortDescription"
    case time = "time"
    case cost = "cost"
    case drink = "drink"
    case ingrediants = "ingrediants"
    case detail = "detail"
}
