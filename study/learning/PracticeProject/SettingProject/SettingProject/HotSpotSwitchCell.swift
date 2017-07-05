//
//  HotSpotSwitchCell.swift
//  SettingProject
//
//  Created by 샤인 on 2017. 6. 22..
//  Copyright © 2017년 IosCamp. All rights reserved.
//

import UIKit

class HotSpotSwitchCell: UITableViewCell {
    @IBOutlet weak var hotSpotSwitchOut: UISwitch!
    @IBOutlet weak var hotSpotCellLb: UILabel!

    var switchIsOn:Bool?
    
    override func awakeFromNib() {
        super.awakeFromNib()
        hotSpotSwitchOut.isOn = UserDefaults.standard.bool(forKey: "HotSpotSwitchSave")
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

    @IBAction func hotSpotSwitchAction(_ sender: UISwitch) {
        if sender.isOn == true{
            switchIsOn = true
            UserDefaults.standard.set(switchIsOn, forKey: "HotSpotSwitchSave")
        }else{
            switchIsOn = false
            UserDefaults.standard.set(switchIsOn, forKey: "HotSpotSwitchSave")
            
        }
    }
}
