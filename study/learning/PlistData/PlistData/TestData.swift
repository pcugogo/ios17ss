//
//  TestData.swift
//  PlistData
//
//  Created by 샤인 on 2017. 6. 19..
//  Copyright © 2017년 IosCamp. All rights reserved.
//

import Foundation

class TestData {
    private static let instance:TestData = TestData()
    
    class var standard:TestData {
        return instance
    }
    private var dic:[String:Any]?
    private var realPath = ""
    
    init() {
        load()
    }
    deinit {
        save()
    }
    
    func object(forKey defaultName:String) -> Any? {
        guard let data = dic else {
            return nil
        }
        return data[defaultName]
    }
    
    
    func set(_ value: Any?, forKey defaultName: String){
        guard let _ = dic, let dataTemp = value else{
            return
        }
        return dic![defaultName] = dataTemp
    }
    
    func removeObject(forKey defaultName:String) {
        guard let _ = dic else {
            return
        }
        dic!.removeValue(forKey: defaultName)
        
    }
    
    
    func load(){
        
        let path:[String] = NSSearchPathForDirectoriesInDomains(.documentDirectory, .userDomainMask, true)
        realPath = path[0] + "/TestList.plist"
        
        let fileManager = FileManager.default
        
        if !fileManager.fileExists(atPath: realPath){
            if let bundlePath = Bundle.main.path(forResource: "TestList", ofType: "plist"){
                
                do {
                    try fileManager.copyItem(atPath: bundlePath, toPath: realPath)
                } catch  {
                    print("non defined error case")
                    return
                }
            }
            print("bundle no data")
            return
        }
        dic = NSDictionary(contentsOfFile: realPath) as? [String : AnyObject]
    }
    
    func save(){
        let nsDic = NSDictionary(dictionary: dic!)
        
        nsDic.write(toFile: realPath, atomically: true)
    }
    
}
