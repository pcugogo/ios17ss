//
//  SettingCenter.swift
//  SettingProject
//
//  Created by 샤인 on 2017. 6. 21..
//  Copyright © 2017년 IosCamp. All rights reserved.
//

import Foundation

enum SettingCellType:String {
    case Detail = "SettingDetailCell"
    case Basic = "SettingBasicCell"
    case Switch = "SettingSwitchCell"
}

class SettingCenter {
    
    static let standard:SettingCenter = SettingCenter()
    
    private init() {
        self.mainListLoad()
        self.cellulerListLoad()
        self.hotSpotListLoad()
        
       
        
    }
    
    var mainMenuData:[Any]?
    private var cellularMenuData:[Any]?
    private var hotSpotMenuData:[Any]?
    
    //섹션의 개수 가져오기
    func cellularSection()->Int{
        
        return cellularMenuData?.count ?? 0
        
    }
    func hotSpotSection(Count:Int) -> Int{
        return hotSpotMenuData?.count ?? 0
    }
//    //섹션의 타이틀 가져오기
//    func title(for section: Int) -> String {
//        
//    }
    //셀 타이틀가져오기
    func mainTitleFor(rowAt indexPath: IndexPath) -> String {
        guard let mainManuDatas = mainMenuData else{
            return "타이틀이 없습니다"
        }
        let dic = mainManuDatas[indexPath.row] as? [String:Any]
        let mainTitle = dic?["Title"] as? String
        return mainTitle!
//

    }
    
    func cellularTitleFor(rowAt indexPath: IndexPath) -> String {
        guard let cellularManuDatas = cellularMenuData else{
            return "타이틀이 없습니다"
        }
        let dic = cellularManuDatas[indexPath.section] as? [String:Any]
        let cellularArray = dic?["Data"] as? [Any]
        let cellularDic = cellularArray?[indexPath.row] as? [String:Any]
        let cellularTitle = cellularDic?["Title"] as? String
        return cellularTitle ?? "타이틀이 없습니다"
    }
    func hotSpotTitleFor(rowAt indexPath: IndexPath) -> String {
        guard let hotSpotManuDatas = hotSpotMenuData else{
            return "타이틀이 없습니다"
        }
        let dic = hotSpotManuDatas[indexPath.section] as? [String:Any]
        let hotSpotArray = dic?["Data"] as? [Any]
        let hotSpotDic = hotSpotArray?[indexPath.row] as? [String:Any]
        let hotSpotTitle = hotSpotDic?["Title"] as? String
        return hotSpotTitle ?? "타이틀이 없습니다"
        
    }
    //로우의 개수 가져오기 
    func mainConntFor(_ section:Int) -> Int {
        guard let mainManuDatas = mainMenuData else{
            return 0
        }
        let dic = mainManuDatas
        return dic.count
        
    }

    func cellulerConntFor(_ section:Int) -> Int {
        guard let cellulerManuDatas = cellularMenuData else{
            return 0
        }
        let dic = cellulerManuDatas[section] as? [String:Any]
        let cellulerArray = dic?["Data"] as? [Any]
        return cellulerArray!.count
    }
    
    func hotSpotConntFor(_ section:Int) -> Int {
        guard let hotSpotManuDatas = hotSpotMenuData else{
            return 0
        }
        let dic = hotSpotManuDatas[section] as? [String:Any]
        let hotSpotArray = dic?["Data"] as? [Any]
       return hotSpotArray!.count
    }
    //셀타입 가져오기
    func mainTypeOfCellFor(rowAt indexPath: IndexPath) -> SettingCellType {
        guard let mainManuDatas = mainMenuData else{
            return .Basic
        }
        let dic = mainManuDatas[indexPath.row] as? [String:Any]
        let mainTitle = dic?["CellType"] as? String
        return SettingCellType(rawValue: mainTitle!)!
    }
    
    func cellulerTypeOfCellFor(rowAt indexPath: IndexPath) -> SettingCellType {
        guard let cellularManuDatas = cellularMenuData else{
            return .Basic
        }
        let dic = cellularManuDatas[indexPath.section] as? [String:Any]
        let cellularArray = dic?["Data"] as? [Any]
        let cellularDic = cellularArray?[indexPath.row] as? [String:Any]
        let cellularType = cellularDic?["CellType"] as? String
        return SettingCellType(rawValue: cellularType!)!

    }
    
    func hotSpotTypeOfCellFor(rowAt indexPath: IndexPath) -> SettingCellType {
        guard let hotSpotManuDatas = hotSpotMenuData else{
            return .Basic
        }
        let dic = hotSpotManuDatas[indexPath.section] as? [String:Any]
        let hotSpotArray = dic?["Data"] as? [Any]
        let hotSpotDic = hotSpotArray?[indexPath.row] as? [String:Any]
        let hotSpotType = hotSpotDic?["CellType"] as? String
        return SettingCellType(rawValue: hotSpotType!)!
        
    }

    
    
    func mainListLoad() {
        if let mainPath = Bundle.main.path(forResource: "MainList", ofType: "plist"), let mainMenuDatas = NSArray(contentsOfFile: mainPath) as? [Any] {
            self.mainMenuData = mainMenuDatas
            print(mainMenuDatas)
            
        }
        
        
    }
    
    func cellulerListLoad() {
        if let cellulerPath = Bundle.main.path(forResource: "CellulerList", ofType: "plist"), let cellularMenuDatas = NSArray(contentsOfFile: cellulerPath) as? [Any] {
            cellularMenuData = cellularMenuDatas 
        }
    }
    
    func hotSpotListLoad() {
        if let hotSpotPath = Bundle.main.path(forResource: "HotSpotList", ofType: "plist"), let hotSpotMenuDatas = NSArray(contentsOfFile: hotSpotPath) as? [Any] {
            hotSpotMenuData = hotSpotMenuDatas
        }
    }

}
