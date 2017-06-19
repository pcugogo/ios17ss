//
//  ViewController.swift
//  PlistData
//
//  Created by 샤인 on 2017. 6. 19..
//  Copyright © 2017년 IosCamp. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

//    let mainBundle = Bundle.main
   
    override func viewDidLoad() {
        super.viewDidLoad()
      //애니오브젝트는 레퍼런스타입만 엔엑스딕셔너리에는 애니가 못들어간다 모두다 레퍼런스타입이다 클래스
        
//        let bundle = Bundle.main
//        let path = bundle.path(forResource: "FriendList", ofType: "plist")
        
        if let realPath = Bundle.main.path(forResource: "FriendList", ofType: "plist"), //번들에 있는 피리스트 불러오기
            let dic = NSDictionary(contentsOfFile: realPath) as? [String:AnyObject]{
           
          print(dic["list"] ?? "")
                
            
        }else{
            //파일이 존재하지 않습니다.
        }
    }

    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
//    func a(){
//         let filePath = mainBundle.path(forResource: "rName",ofType:"rType")
//        if let path = filePath{  //파일안이 비어있을 수 있기때문에 옵셔널바인딩을 해준다
//            let image = UIImage(contentsOfFile: path)  // 어레이나 딕셔너리에는 contentsOfFile이 존재하지않는다
//        }
//    }
//
//    
//    func b(){
//        if let filePath = mainBundle.path(forResource:"rrName", ofType:"rrType"),
//           let dict = NSDictionary(contentsOfFile: filePath) as? [String:AnyObject] { //ns딕셔너리는 클래스 ,딕셔너리는 스트럭트
//        }
//    }
    
    func writeFile(){
        //파일 경로 파악
        let path = NSSearchPathForDirectoriesInDomains(.documentDirectory, .userDomainMask, true)
        let realPath = path[0] + "/FriendList.plist"  //여기는 .하고 피리스트가 붙어있다
       // 실제 파일 존재 여부 파악
        //** 만약에 없다면 번들에 있는 파일을 복사
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
        //딕셔너리 인스턴스 만들기
        let dic = NSDictionary(contentsOfFile: realPath) as? [String:AnyObject]
        //추가 가능
        //제거 가능
        //여러가지
        
        
        //딕셔너리 인스턴스 저장
        let nsDic = NSDictionary(dictionary:dic!)
        nsDic.write(toFile: realPath, atomically:true)
    }
    

    
    
    
    
    
    
    
}

