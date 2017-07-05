//
//  CustomNibTableViewCell.swift
//  collectionViewPractice
//
//  Created by 샤인 on 2017. 7. 3..
//  Copyright © 2017년 IosCamp. All rights reserved.
//

import UIKit

class CustomNibTableViewCell: UITableViewCell {

    @IBOutlet weak var squareImgeView: UIImageView!
    @IBOutlet weak var titleTextLabel: UILabel!
    @IBOutlet weak var subTitleTextLabel: UILabel!
    @IBOutlet weak var cellSwitchAcc: UISwitch!
    
    static let reuseId: String = "CustomCell" //이렇게 해주면 오타방지 가능
    static let cellHeight = 80.0
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
