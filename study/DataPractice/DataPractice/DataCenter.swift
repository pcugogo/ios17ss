//
//  DataCenter.swift
//  DataPractice
//
//  Created by 샤인 on 2017. 7. 16..
//  Copyright © 2017년 IosCamp. All rights reserved.
//

import Foundation

class DataCenter{
    
    static let shared = DataCenter()
    
    init() {
        loadFromBundle()
    }
    
    var recipeArray:[Recipe]!
    
//    var dataArray:[Recipe] {
//        get{
//            return recipeArray
//        }
//    }
    
    private var fileManager = FileManager()
    
    var recipeData:Recipe?
    
    
    
    private func loadFromBundle()
    {
        if let bundlePath = Bundle.main.path(forResource: "HSRecipeList", ofType: "plist"),
            let dataList = NSArray(contentsOfFile: bundlePath) as? [[String:Any]]
        {
            self.recipeArray = dataList.map({ (dictionary: [String: Any]) -> Recipe in
                return Recipe.init(dictionary: dictionary)
            })
            
        }
    }

    private func parseUsers(_ array:[[String:Any]]) {
        self.recipeArray = array.map({ (dictionary:[String:Any]) -> Recipe in
            return Recipe.init(dictionary: dictionary)
            
        })
    }
    
}
