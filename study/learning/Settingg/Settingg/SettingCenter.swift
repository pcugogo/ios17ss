//
//  SettingCenter.swift
//  Settingg
//
//  Created by 샤인 on 2017. 6. 20..
//  Copyright © 2017년 IosCamp. All rights reserved.
//

import Foundation

enum SettingCellType:String{
    case Basic = "SettingBasicCell"
    case Detail = "SettingDetaliCell"
    case Switch = "SettingSwitchCell"
}

class SettingCenter {
    static let sharedSetting:SettingCenter = SettingCenter()
    
    
    private init(){   //프라이빗 풀면 인스턴스로 만들 수 있다
        loadSettingData()
    }

    private var settingMenuDataList:[Any]?

    //섹션의 갯수 가져오기
    var sectionCount:Int{
        return settingMenuDataList?.count ?? 0
    }
    
    //섹션의 타이틀 가져오기
    func title(for section:Int) -> String{
        guard let sectionDatas = settingMenuDataList else{
            return "섹션 이름 없음"
        }
        let sectionData:[String:Any] = sectionDatas[section] as! [String:Any]
        let sectionName = sectionData["SectionTitle"] as? String
        return sectionName ?? ""
    }
    
    //cell타이틀 가져오기
    func titleFor(rowAt indexPath:IndexPath) -> String{
        guard let sectionDatas = settingMenuDataList else{
            return "타이틀 이름 없음"
        }
        
        let sectionData:[String:Any] = sectionDatas[indexPath.section] as! [String:Any]
        let rowDataList = sectionData["Data"] as? [[String:Any]]
        let rowData = rowDataList?[indexPath.row]
        let title = rowData?["Content"] as? String
        
        return title ?? "타이틀 이름 없음"
    }
    
    //로우의 갯수 가져오기
    
    func rowCountFor(_ section:Int) -> Int{
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
    
    //셀타입 가져오기
    
    func typeOfCellFor(rowAt indexPath:IndexPath) -> SettingCellType{
        guard let sectionDatas = settingMenuDataList else{
            return .Basic
        }
        
        let sectionData = sectionDatas[indexPath.section] as? [String:Any]
        let rowDataList = sectionData?["Data"] as! [Any]
        let rowData = rowDataList[indexPath.row] as? [String:Any]
//        let type = rowData?["CellStyle"]
        
        if let styleStr = rowData?["CellStyle"] as? String{
            let cellStyle:SettingCellType = SettingCellType(rawValue: styleStr)!
            return cellStyle 
        }else{
            return .Basic
        }


    }
    
    
    
    
    
    
    
    func loadSettingData(){
       if let path = Bundle.main.path(forResource: "SettingsList", ofType: "plist"),
        let settingMenuDataLists = NSArray(contentsOfFile: path) as? [Any] {
            settingMenuDataList = settingMenuDataLists
        }
            
        
        
        
        
    }
    
}
