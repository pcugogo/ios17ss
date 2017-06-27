//
//  CellularSwitchCell.swift
//  SettingProject
//
//  Created by 샤인 on 2017. 6. 22..
//  Copyright © 2017년 IosCamp. All rights reserved.
//

import UIKit

class CellularSwitchCell: UITableViewCell {
    @IBOutlet weak var cellularSwitchOut: UISwitch!
    @IBOutlet weak var cellularSwitchLb: UILabel!

    var switchIsOn:Bool?
    
    override func awakeFromNib() {
        super.awakeFromNib()
            cellularSwitchOut.isOn = UserDefaults.standard.bool(forKey: "CelluarSwitchSave")
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    @IBAction func cellularSwitchAction(_ sender: UISwitch) {
        if sender.isOn == true{
            switchIsOn = true
            UserDefaults.standard.set(switchIsOn, forKey: "CelluarSwitchSave")
        }else{
            switchIsOn = false
            UserDefaults.standard.set(switchIsOn, forKey: "CelluarSwitchSave")
            
        }
    }

}
