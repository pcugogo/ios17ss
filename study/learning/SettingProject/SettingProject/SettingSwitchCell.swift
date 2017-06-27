//
//  SettingSwitchCell.swift
//  SettingProject
//
//  Created by 샤인 on 2017. 6. 21..
//  Copyright © 2017년 IosCamp. All rights reserved.
//

import UIKit

class SettingSwitchCell: UITableViewCell {

    @IBOutlet var switchOutlet:UISwitch!
    @IBOutlet var switchLb:UILabel!
    
    var switchIsOn:Bool?
    
    //var delegate = self
    override func awakeFromNib() {
        super.awakeFromNib()
        switchOutlet.isOn = UserDefaults.standard.bool(forKey: "MainSwitchSave")
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        
        // Configure the view for the selected state
    }
    
    @IBAction func changedValueSwitch(_ sender: UISwitch) {
        if sender.isOn == true{
            switchIsOn = true
            UserDefaults.standard.set(switchIsOn, forKey: "MainSwitchSave")
        }else{
            switchIsOn = false
            UserDefaults.standard.set(switchIsOn, forKey: "MainSwitchSave")
            
        }
        
    }
    func setTitle(title:String){
        self.switchLb.text = title
    }
    
    
 

}


//protocol SettingSwitchCellDelegate{
//
//}
