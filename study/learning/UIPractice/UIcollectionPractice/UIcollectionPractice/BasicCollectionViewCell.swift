//
//  BasicCollectionViewCell.swift
//  UIcollectionPractice
//
//  Created by 샤인 on 2017. 7. 3..
//  Copyright © 2017년 IosCamp. All rights reserved.
//

import UIKit

class BasicCollectionViewCell: UICollectionViewCell {
    
    @IBOutlet var titleLb:UILabel?
    
    
    
    override func awakeFromNib() { //닙파일이 생성된 직"후" 로드 된 후 뷰디드로드같은느낌
        let bgView = UIView()
        bgView.backgroundColor = .green
        
        self.selectedBackgroundView = bgView

    }
    
    func set(title:String){
        self.titleLb?.text = title
        
    }
    
}
