//
//  DtailSwitchCell.swift
//  SettingProject
//
//  Created by 샤인 on 2017. 6. 22..
//  Copyright © 2017년 IosCamp. All rights reserved.
//

import UIKit

class DtailSwitchCell: UITableViewCell {

    @IBOutlet weak var detailSwitchOut: UISwitch!
    @IBOutlet weak var detailViewLb: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    @IBAction func detailSwitchAction(_ sender: UISwitch) {
    }

}
