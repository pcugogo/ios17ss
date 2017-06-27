//
//  DetailViewController.swift
//  SettingProject
//
//  Created by 샤인 on 2017. 6. 22..
//  Copyright © 2017년 IosCamp. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController,UITableViewDataSource,UITableViewDelegate {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return SettingCenter.standard.cellularSection()
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 2
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cellType = SettingCenter.standard.(rowAt: indexPath)
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
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
