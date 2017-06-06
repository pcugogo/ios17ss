//
//  PoketMonInfoViewController.swift
//  CellViewPractice
//
//  Created by 샤인 on 2017. 6. 4..
//  Copyright © 2017년 IosCamp. All rights reserved.
//

import UIKit

class PoketMonInfoViewController: UIViewController {

    var imgName:String?
    var titleName:String?
    
    
    @IBOutlet weak var poketMonImg: UIImageView!
    @IBOutlet weak var poketMonNameLb: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        let poketImgName = self.imgName ?? "DefaultImageName" //데이터가 없을때 처리하는 방법을 처리하는 것이 중요하다
        //디폴트이미지를 준비해야된다
        let poketName = self.titleName ?? "이름 모름"
        poketMonImg.image = UIImage(named: poketImgName)
        poketMonNameLb.text = poketName
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
   

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
