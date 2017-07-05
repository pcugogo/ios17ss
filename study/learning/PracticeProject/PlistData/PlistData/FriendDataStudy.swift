//
//  FriendDataStudy.swift
//  PlistData
//
//  Created by 샤인 on 2017. 6. 19..
//  Copyright © 2017년 IosCamp. All rights reserved.
//

import Foundation

class FriendDataStudy {
    private static let instance:FriendDataStudy = FriendDataStudy()
    private var friendData:[String:Any]?
    
    private var dic:[String:AnyObject]?
    private var realPath = ""
    class var stantard:FriendDataStudy {
        return instance
    }

    init() {
        load()
    }
    deinit {
        save()
    }
    
    func set(anyObject: AnyObject?, forKey: String) {
        
        
//        dic = 
       
            save()
        
        }

    
    func load(){
        let path:[String] = NSSearchPathForDirectoriesInDomains(.documentDirectory, .userDomainMask, true)
        realPath = path[0] + "/FriendList.plist"
        let fileManager = FileManager.default
        
        if !fileManager.fileExists(atPath: realPath){
            if let bundlePath = Bundle.main.path(forResource: "FriendList", ofType: "plist"){
                
                do{
                    try fileManager.copyItem(atPath: bundlePath, toPath: realPath)
                }catch{
                    return
                }
            }else{
                return
                
                
            }
        }
        
        dic = NSDictionary(contentsOfFile: realPath) as? [String:AnyObject]
    }
    
    func save(){
       
        let nsDic = NSDictionary(dictionary:dic!)
        nsDic.write(toFile: realPath, atomically:true)
    }

}
