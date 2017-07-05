//
//  SettingViewController.swift
//  Setting
//
//  Created by pcw on 2017. 6. 20..
//  Copyright © 2017년 pcw. All rights reserved.
//

import UIKit

class SettingViewController: UIViewController, UITableViewDelegate, UITableViewDataSource,SettingSwitchCellDelegate {

    //*****************************************************//
    //                  Life Cycle                         //
    //*****************************************************//
    //MARK:- Life Cycle Method
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    //*****************************************************//
    //                  UITableViewDataSource              //
    //*****************************************************//
    //MARK:- UITableViewDataSource
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return SettingCenter.sharedSetting.sectionCount
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return SettingCenter.sharedSetting.rowCountFor(section)
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cellType = SettingCenter.sharedSetting.typeOfCellFor(rowAt: indexPath)
//        let cell = tableView.dequeueReusableCell(withIdentifier: cellType.rawValue, for: indexPath)
//        
//        cell.textLabel?.text = SettingCenter.sharedSetting.titleFor(rowAt: indexPath)
        
        switch cellType {
        case .Basic:
            let cell = tableView.dequeueReusableCell(withIdentifier: cellType.rawValue, for: indexPath)
            cell.textLabel?.text = SettingCenter.sharedSetting.titleFor(rowAt: indexPath)
            cell.selectionStyle = .none
            return cell
        case .Detail:
            let cell = tableView.dequeueReusableCell(withIdentifier: cellType.rawValue, for: indexPath)
            cell.textLabel?.text = SettingCenter.sharedSetting.titleFor(rowAt: indexPath)
            cell.selectionStyle = .blue
            return cell
        case .Switch:
            let cell:SettingSwitchCell = tableView.dequeueReusableCell(withIdentifier: cellType.rawValue, for: indexPath) as! SettingSwitchCell
            cell.setTitle(SettingCenter.sharedSetting.titleFor(rowAt: indexPath))
            
            cell.selectionStyle = .none
          
            cell.delegate = self
        
            return cell
            
        }
        
    }
//    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
//        return SettingCenter.sharedSetting.titleFor(section)
//    }
    func switchCellValueChanged(_ cell: SettingSwitchCell, isOn: Bool) {
        print("switchChanged")
    }
    
}
