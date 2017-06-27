//
//  SettingViewController.swift
//  SettingProject
//
//  Created by 샤인 on 2017. 6. 21..
//  Copyright © 2017년 IosCamp. All rights reserved.
//

import UIKit

class SettingViewController: UIViewController, UITableViewDelegate, UITableViewDataSource  {

    //메인 테이블
    @IBOutlet weak var mainTableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return SettingCenter.standard.mainConntFor(section)
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cellType = SettingCenter.standard.mainTypeOfCellFor(rowAt: indexPath)
        //        let cell = tableView.dequeueReusableCell(withIdentifier: , for: indexPath)
        switch cellType {
        case .Basic:
            let cell = tableView.dequeueReusableCell(withIdentifier: SettingCellType.Basic.rawValue , for: indexPath)
            cell.textLabel?.text = SettingCenter.standard.mainTitleFor(rowAt: indexPath)
            return cell
        case .Detail:
            let cell = tableView.dequeueReusableCell(withIdentifier: SettingCellType.Detail.rawValue , for: indexPath)
            cell.textLabel?.text = SettingCenter.standard.mainTitleFor(rowAt: indexPath)
            return cell
        case .Switch:
            let cell:SettingSwitchCell = tableView.dequeueReusableCell(withIdentifier: SettingCellType.Switch.rawValue , for: indexPath) as! SettingSwitchCell
            cell.setTitle(title: SettingCenter.standard.mainTitleFor(rowAt: indexPath))
            return cell
        }
    }
 
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        if indexPath.row == 1 || indexPath.row == 2 || indexPath.row == 5 {
            let bydetailView:DetailViewController = storyboard?.instantiateViewController(withIdentifier: "DetailViewController") as! DetailViewController
            navigationController?.pushViewController(bydetailView, animated: true)
            
            mainTableView.deselectRow(at: IndexPath.init(row: 1, section: 0), animated: true)
        }else if indexPath.row == 3{
            let byCellularView:SettingCellularViewController = storyboard?.instantiateViewController(withIdentifier: "SettingCellularViewController") as! SettingCellularViewController
            navigationController?.pushViewController(byCellularView, animated: true)
            
            mainTableView.deselectRow(at: IndexPath.init(row: 3, section: 0), animated: true)
            }else if indexPath.row == 4 {
            let byHotSpotView:SettingHotSpotViewController = storyboard?.instantiateViewController(withIdentifier: "SettingHotSpotViewController") as! SettingHotSpotViewController
            navigationController?.pushViewController(byHotSpotView, animated: true)
            
            mainTableView.deselectRow(at: IndexPath.init(row: 4, section: 0), animated: true)
            //여기서 이 뷰로 뿌릴 수 있다
        }
    }

}
