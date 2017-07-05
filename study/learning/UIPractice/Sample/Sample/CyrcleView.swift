//
//  CyrcleView.swift
//  Sample
//
//  Created by 샤인 on 2017. 6. 12..
//  Copyright © 2017년 IosCamp. All rights reserved.
//

import UIKit


    
protocol CyrcleViewDelegate {
    func didSelectedItem(item:CyrcleView)
    func isBool() -> Bool
}

class CyrcleView: UIView {
    var delegate:CyrcleViewDelegate?
   
    @IBOutlet var title:UILabel?
    @IBOutlet var oK:UIButton?
    
    override func awakeFromNib() {
        super.awakeFromNib()
        self.layer.cornerRadius = self.frame.width/2
        self.layer.borderColor = UIColor.black.cgColor
        self.layer.borderWidth = 1
        
    }
    func setTitleText(_ text:String){
        if let titleLB = title{
             titleLB.text = text
        }
    }
    @IBAction func btnAction(_ sender:UIButton){
        if delegate?.isBool() == true{
        delegate?.didSelectedItem(item: self)
        }
        
    }
    //여기 있는 버튼을 뷰컨트롤에서 설정하고 싶을때 딜리게이트를 사용했다
   UITableView
  
}

