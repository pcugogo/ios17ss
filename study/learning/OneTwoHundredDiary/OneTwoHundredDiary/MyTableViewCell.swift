//
//  TableViewCell.swift
//  OneTwoHundredDiary
//
//  Created by 샤인 on 2017. 6. 14..
//  Copyright © 2017년 IosCamp. All rights reserved.
//

import UIKit

class MyTableViewCell: UITableViewCell {
    @IBOutlet var textView:UITextView!
    @IBOutlet var textLB:UILabel!
    
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
       
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    func setTextView(name:String){
    
    }
    func setTextLb(labelText:String){
        textLB.text = labelText
    }

}
