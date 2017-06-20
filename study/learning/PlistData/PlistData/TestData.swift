//
//  TestData.swift
//  PlistData
//
//  Created by 샤인 on 2017. 6. 19..
//  Copyright © 2017년 IosCamp. All rights reserved.
//

import Foundation

class TestData{
    private static var instance:TestData = TestData()
    class var standard:TestData{
        return instance
    }
    private var dic:[String:Any]?
    private var realPath = ""
    
    
    func load(){
        let peth = NSSearchPathForDirectoriesInDomains(.documentDirectory, .userDomainMask, true)
        realPath = peth[0] + "/testList.plist"
        
        let fileManager = FileManager.default
        
        if !fileManager.fileExists(atPath: realPath){
            if let bundlePath = Bundle.main.path(forResource: "TestList", ofType: "plist"){
                do {
                    try fileManager.copyItem(atPath: bundlePath, toPath: realPath)
                } catch  {
                    return
                }
            }
            
        }
        dic = NSDictionary(contentsOfFile: realPath) as? [String : Any]
    }
    
    func save(){
        let nsDic = NSDictionary(dictionary: dic!)
        nsDic.write(toFile: realPath, atomically: true)
    }
}
