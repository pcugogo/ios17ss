//
//  ViewController.swift
//  20170522UI
//
//  Created by 샤인 on 2017. 5. 22..
//  Copyright © 2017년 IosCamp. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

        override func viewDidLoad() { //실행시 실행되므로 여기에 이미지를 코딩해도 스토리보드에 뜨지않는다 그리고 얘랑 스토리보드랑
            //별개이다 스토리보드가 먼저 실행된다 그래서 프로젝트 시작시 스토리보드를 쓸지 뷰딛에 코딩으로
            //할지 고민해야된다 스토리보드가 편하지만, 코딩으로 하면 수정이 용이하다
            super.viewDidLoad()
            let newView = UIView(frame: CGRect(x: 15, y: 50, width: 250, height: 150))
            newView.backgroundColor = UIColor.black
            newView.alpha = 1.0
            self.view.addSubview(newView)
            let newLb = UILabel(frame: CGRect(x:0, y: 120, width:250, height:30))
            newLb.text = "View위에 레이블 입니다."
            newLb.textColor = UIColor.white
            newLb.textAlignment = NSTextAlignment.right
            newView.addSubview(newLb)
            let centerLb = UILabel(frame:CGRect(x:0, y: 200, width:375,height:30))
            centerLb.text = "중앙에 있는 레이블입니다"
            centerLb.textAlignment = NSTextAlignment.center
            view.addSubview(centerLb)
            let pontLb = UILabel(frame: CGRect(x:0, y:230, width:375,height:30))
            pontLb.text = "폰트는 20입니다"
            pontLb.textAlignment = NSTextAlignment.center
            pontLb.font = UIFont.systemFont(ofSize: 20)
            view.addSubview(pontLb)
            
            let optimusImg = UIImageView(frame: CGRect(x:0,y:350, width:100,height:200))
            optimusImg.image = UIImage(named:"옵티머스프라임.jpg")
            optimusImg.contentMode = UIViewContentMode.scaleAspectFill //비율 유지상태에서 꽉채워라
            view.addSubview(optimusImg)
            
            let bumbleImg = UIImageView(frame: CGRect(x:100,y:350, width:100,height:200))
            bumbleImg.image = UIImage(named:"범블비.jpg")
            bumbleImg.contentMode = UIViewContentMode.scaleToFill //스케일에 맞춰라
            view.addSubview(bumbleImg)
            
            let ironImg = UIImageView(frame: CGRect(x:200,y:350, width:100,height:200))
            ironImg.image = UIImage(named:"아이언맨.jpg")
            ironImg.contentMode = UIViewContentMode.scaleAspectFit //비율 유지상태에서 핏하게 해줘라
            view.addSubview(ironImg)
            
            let setImg = UIImageView(frame: CGRect(x:300,y:350, width:100,height:200))
            setImg.image = #imageLiteral(resourceName: "Robot")   //에셋 이미지에 이미지 3개를 넣고 화면 크기별로 이미지가 자동으로 바뀐다
            setImg.contentMode = UIViewContentMode.scaleAspectFit //비율 유지상태에서 핏하게 해줘라
            view.addSubview(setImg)
        }                                                         //clipsToBounds는 이미지뷰크기에 맞춰 잘라라

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

