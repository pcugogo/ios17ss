//
//  SettingCenter.swift
//  Setting
//
//  Created by pcw on 2017. 6. 20..
//  Copyright © 2017년 pcw. All rights reserved.
//

import Foundation

enum SettingCellType:String {
    case Basic = "SettingBasicCell"
    case Detail = "SettingDetailCell"
    case Switch = "SettingSwitchCell"
    
    
}

class SettingCenter{
    

    
    
    //*****************************************************//
    //                  Initalize                         //
    //*****************************************************//
    //MARK:- Initalize
     static let sharedSetting:SettingCenter = SettingCenter()
    
    
    private init(){   //프라이빗 풀면 인스턴스로 만들 수 있다
        loadSettingData()
    }
    
    
    //*****************************************************//
    //          SettingDefaultData Controll Method         //
    //*****************************************************//
    //MARK:- SettingDefaultData Controll Method
   
    
    //------------섹션의 갯수 가져오기{get}
    var sectionCount:Int{
        return settingMenuDataList?.count ?? 0
    }
    //------------섹션 타이틀 가져오기 {get}
    func title(for section:Int) -> String{
        guard let sectionDatas = settingMenuDataList else{
            return "섹션 이름 없음"
        }
        
        let dic:[String:Any] = sectionDatas[section] as! [String:Any]
        let sectionTitle = dic["SectionTitle"] as? String
        return sectionTitle ?? ""
    }
    
    //--------Cell 타이틀 가져오기 {get}
    func titleFor(rowAt indexPath:IndexPath) -> String{
    //settingMenuDataList에서 각 로우의 타이틀 가져오기
        guard let sectionDatas = settingMenuDataList else{ //[[String:Any]]
            return "타이틀 이름 없음"
        }
        let sectionData:[String:Any] = sectionDatas[indexPath.section] as! [String:Any]
        //섹션데이타 :2개의 키 섹션타이틀 데이타
        let rowDataList = sectionData["Data"] as! [[String:Any]]
        let rowData = rowDataList[indexPath.row] as? [String:Any]
            //로우데이터 : keys = "CellStyle", "Content"
        let title = rowData?["Content"] as? String
        return title ?? "타이틀 없음"
    }
    // 로우의 갯수 가져오기
    func rowCountFor(_ section:Int)-> Int{
        guard let sectionDatas = settingMenuDataList else{
            return 0
        }
        
        let sectionData:[String:Any] = sectionDatas[section] as! [String:Any]
        
        if let rowDataList = sectionData["Data"] as? [Any]{
            return rowDataList.count
        }else{
            return 0
        }
    
    }

    //--------Cell type 가져오기 {get}
    //리턴 타입인 스트링을 열거형 타입으로 변경해야됨
    func typeOfCellFor(rowAt indexPath:IndexPath) -> SettingCellType{
        //settingMenuDataList에서 각 셀의 타입 가져오기
        guard let sectionDatas = settingMenuDataList else{
            return .Basic
        }
        let sectionData:[String:Any] = sectionDatas[indexPath.section] as! [String:Any]
        let rowDataList = sectionData["Data"] as! [Any]
        let rowData = rowDataList[indexPath.row] as? [String:Any]
        
        if let styleStr = rowData?["CellStyle"] as? String{
            let cellStyle:SettingCellType? = SettingCellType(rawValue: styleStr)
            return cellStyle ?? .Basic
        }else{
            return.Basic
        }
    
    }
    
    
    
    //*****************************************************//
    //                  Private Properties                 //
    //*****************************************************//
    //MARK:- Private Properties
     private var settingMenuDataList:[Any]?
    
    //*****************************************************//
    //                  DataLoad                           //
    //*****************************************************//
    //MARK:- DataLoad
    
    //"Setting.plist" 에서 데이터 불러오기
    func loadSettingData(){
        
        if let path = Bundle.main.path(forResource: "Settings", ofType: "plist"),
            let settingMenuDataList = NSArray(contentsOfFile: path) as? [Any]{
            
            self.settingMenuDataList = settingMenuDataList
        
        }
        
    }
    
}
