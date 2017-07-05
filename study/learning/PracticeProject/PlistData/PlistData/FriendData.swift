//
//  FriendData.swift
//  PlistData
//
//  Created by 샤인 on 2017. 6. 19..
//  Copyright © 2017년 IosCamp. All rights reserved.
//

import Foundation

class FriendData {
    
    
    
    private static let instance:FriendData = FriendData()
    
    class var standard:FriendData {
        return instance
    }
    private var friendData:[String:Any]?
    private var friendList:[Person]?
    private var dic:[String:Any]?
    private var realPath = ""
    
    private init() {
        load()
    }
    
    deinit {
        //        save()
    }
    
    func object(forKey defaultName: String) -> Any? {
        return nil
    }
    
    func set(_ value: Any?, forKey defaultName: String) {
        
    }
    
    func removeObject(forKey defaultName: String) {
        
    }
    
    
    
    
    
    func add(friend:Person){
        friendList?.append(friend)
    }
    func removeFriend(){
        
    }
    
    func updateFriend(newPerson person:Person){
        let compareKey = person.name
        var index:Int = 0
        
        
        for friend in friendList!{
            if friend.name == compareKey{
                friendList![index] = person
                break
            }
            index += 1
        }
    }
    
    func allFriendList() -> [Person]?{
        return friendList
    }
    
    //    func friend(name:String) -> Person?{
    //        for firned in friendList!{
    //            if friend.name == name{
    //                return friend
    //            }
    //        }
    //    }
    
    
    
    
    
    
    
    
    private func load(){
        let Path = NSSearchPathForDirectoriesInDomains(.documentDirectory, .userDomainMask, true)
        realPath = Path[0] + "FriendList.plist"
        
        
        
        
        friendData = NSDictionary(contentsOfFile: realPath) as? [String:Any]
        
        let tempList = friendData?["list"] as? [Any]
        
        var newFriendList:[Person] = []
        for temp in tempList!{
            let dic = temp as! [String:Any]
            
            let p = Person(name: dic["name"] as? String, age: dic["age"] as? Int)
            newFriendList.append(p)
        }
        friendList = newFriendList
    }
    
    
    
    
    func save(){
        let Path = NSSearchPathForDirectoriesInDomains(.documentDirectory, .userDomainMask, true)
        let realPath = Path[0] + "FriendList.plist"
        
        let fileManager = FileManager.default
        
        if !fileManager.fileExists(atPath: realPath){
            if let bundlePath = Bundle.main.path(forResource: "FriendList", ofType: "plist"){
                
                do {
                    try fileManager.copyItem(atPath: bundlePath, toPath: realPath)
                } catch  {
                    return
                }
            }
        }
        
        if let data = friendData {
            
            let nsDic = NSDictionary(dictionary: dic!)
            nsDic.write(toFile: realPath, atomically: true)
        }
    }
    
    
    
    
    
}


    //        let fileManager = FileManager.default
    //
    //        if !fileManager.fileExists(atPath: realPath){
    //            if let bundlePath = Bundle.main.path(forResource: "FriendList", ofType: "plist"){
    //
    //                do {
    //                    try fileManager.copyItem(atPath: bundlePath, toPath: realPath)
    //                } catch  {
    //                    return
    //                }
    //            }
    //        }
    //        dic = NSDictionary(contentsOfFile: realPath) as? [String : Any]

