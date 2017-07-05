//
//  MyTableViewCell.swift
//  MoneyCalculation
//
//  Created by 샤인 on 2017. 6. 15..
//  Copyright © 2017년 IosCamp. All rights reserved.
//

import UIKit

class MyTableViewCell: UITableViewCell {

    @IBOutlet weak var nameTextField: UITextField!
    
    var delegate:MyTableViewCellDelegate?
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
    
    
    
    }
    
    @IBAction func addListButtonTouched(_ sender: UIButton) {
        
    delegate?.addListReqest(self)
        
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

    @IBOutlet weak var addNameBtn: UIButton!
}

protocol MyTableViewCellDelegate {
    func addListReqest(_ item:MyTableViewCell)
}
