//
//  CustomNibTableViewController.swift
//  collectionViewPractice
//
//  Created by 샤인 on 2017. 7. 3..
//  Copyright © 2017년 IosCamp. All rights reserved.
//

import UIKit

class CustomNibTableViewController: UIViewController,UITableViewDelegate,UITableViewDataSource {

    @IBOutlet weak var tableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        self.tableView.register(UINib.init(nibName: "CustomNibTableViewCell", bundle: nil), forCellReuseIdentifier: CustomNibTableViewCell.reuseId) //테이블뷰에서 이 닙을 쓸거다
    }//번들 닐주면 메인

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 5
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell:CustomNibTableViewCell = tableView.dequeueReusableCell(withIdentifier: CustomNibTableViewCell.reuseId, for: indexPath) as! CustomNibTableViewCell
        cell.titleTextLabel.text = "큰텍스트"
        cell.subTitleTextLabel.text = "작고 길고 긴 텍스트"
        cell.squareImgeView.image = UIImage(named: "7")
        cell.cellSwitchAcc.addTarget(self, action: #selector(switchValueChanged(_:)), for: UIControlEvents.valueChanged)
        //UIControlEvents.valueChanged가 일어나면 target에게 action시켜: self.switchValueChanged(cell.cellSwitchAcc)
        return cell
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return CGFloat(CustomNibTableViewCell.cellHeight)
    }
    func switchValueChanged(_ sender:UISwitch) {
        print("그렇다고한다", sender.isOn)
//        self.tableView.reloadData()
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