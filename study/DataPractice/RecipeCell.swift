//
//  RecipeCell.swift
//  DataPractice
//
//  Created by 샤인 on 2017. 7. 17..
//  Copyright © 2017년 IosCamp. All rights reserved.
//

import UIKit

class RecipeCell: UITableViewCell {

    @IBOutlet weak var foodImg: UIImageView!
    @IBOutlet weak var imgTimeLb: UILabel!
    @IBOutlet weak var nameLb: UILabel!
    @IBOutlet weak var shortDescriptionLb: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
