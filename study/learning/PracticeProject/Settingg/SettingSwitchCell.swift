//
//  SettingSwitchCell.swift
//  Settingg
//
//  Created by 샤인 on 2017. 6. 21..
//  Copyright © 2017년 IosCamp. All rights reserved.
//

import UIKit

class SettingSwitchCell: UITableViewCell {

    
    @IBOutlet weak var switcher: UISwitch!
    @IBOutlet weak var titleLb: UILabel!
    
    var delegate:SettingSwitchCellDelegate?
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        
        // Configure the view for the selected state
    }
    
    //타이틀 설정
    func setTitle(_ title:String){
        titleLb.text = title
    }
    
    
    
//    @IBAction func switcherValueChange(_ sender: UISwitch) {
//        delegate?.switchCellValueChanged(self, isOn: sender.isOn)
//    }
    
    
}

protocol SettingSwitchCellDelegate{
    func switchCellValueChanged(_ cell:SettingSwitchCell, isOn:Bool)
}
