//
//  ViewController.swift
//  friendList
//
//  Created by 샤인 on 2017. 5. 17..
//  Copyright © 2017년 IosCamp. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    var friendList:[[String:String]]? //옵셔널 타입 변수
    
    
//    func addfriend(name:String, gender:String) {
//        var friend:[String:String] = [String:String]()
//        friend.updateValue(<#T##value: String##String#>, forKey: <#T##String#>)
//    }
    
//    func addFriend(name:String, gender:String){
//        var friend:[String:String] = [String:String]()
//        friend.updateValue(name, forKey: "name")
//        friend.updateValue(gender, forKey: "gender")
//        addFriend(friendData:friend)
//    }
    
//    func friendNames() -> [String] {
//        guard let friends = friendList else{
//            return[]
//        }
//        var returnList:[String] = []
    
//        for friend:[String:String] in friends {
//            let name:String = friend["name"]
//            returnList.append(name)
//        }
//    }
//    
    func printFriendName(){
        
        if let friends:[[String:String]] = friendList {
            for friend:[String:String] in friends{
                for(key,value) in friend{
                    if key == "name" {
                        print(value)
                }
                  
            }
               
        }
    }
        
    }
    
   
    
    
    func addFriend(name:String, gender:String){
        var gg: [String:String] = [:]
        if friendList == nil {           //프렌드리스트 값이 닐값일경우
            friendList = []              //프렌드 리스트를 초기화 해준다
        }
        friendList!.append(name, gender)
    }
    
    
    func printFriendList(name:String){
        if let friends:[String] = friendList { //여기 닐값이 들어오면 아예 실행이 되지않기때문에
            for friendNames in friends {      //이쪽으로 닐값이 아닌 경우만 올 수 있다
                print(friendNames)
            }
        }
    }
    
    
    
    
    
}

