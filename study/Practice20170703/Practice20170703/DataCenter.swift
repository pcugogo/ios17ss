 //
//  DataCenter.swift
//  Practice20170703
//
//  Created by 샤인 on 2017. 7. 5..
//  Copyright © 2017년 IosCamp. All rights reserved.
//

import Foundation

class DataCenter {
    
    var realPath:String = ""
    var arr:[[String:Any]]?

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
        
        arr = NSArray(contentsOfFile: realPath) as? [[String:Any]]
    }
   
    
   
}
