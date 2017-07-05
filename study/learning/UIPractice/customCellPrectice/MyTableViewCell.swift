//
//  MyTableViewCell.swift
//  customCellPrectice
//
//  Created by 샤인 on 2017. 6. 12..
//  Copyright © 2017년 IosCamp. All rights reserved.
//

import UIKit

class MyTableViewCell: UITableViewCell {

    @IBOutlet var img:UIImageView?
    @IBOutlet var textLb:UILabel?
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
       
    }

    func setImg(name:String) {
        img?.image = UIImage(named: name)
        img?.layer.cornerRadius = 10
        
    }
    func setText(name:String){
        textLb?.text = name
        textLb?.layer.borderWidth = 1
    }
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
