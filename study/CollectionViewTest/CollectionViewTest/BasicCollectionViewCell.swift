//
//  BasicCollectionViewCell.swift
//  CollectionViewTest
//
//  Created by youngmin joo on 2017. 7. 3..
//  Copyright © 2017년 WingsCompany. All rights reserved.
//

import UIKit

class BasicCollectionViewCell: UICollectionViewCell {
    
    
    @IBOutlet var titleLb:UILabel!
    @IBOutlet var imgView:UIImageView!
    
    @IBOutlet weak var indicatorOut: UIActivityIndicatorView!
    override func awakeFromNib() {
        let bgView = UIView()
        bgView.backgroundColor = .orange
        
        self.selectedBackgroundView = bgView
    }
    
    /**************/
    //Use Step1~ Step5
    func set(title:String)
    {
        self.titleLb.text = title
    }
    
    func set(image:UIImage)
    {
        imgView.image = image
    }
    /****************/
    
    
    
    //Make Step6
    /*
        타이틀과 이미지 셋팅하기
        디스패치 큐 사용해서 비동기 이미지 다운로드 하기
         <추가 기능 구현>
        *이미지 로딩전까지 디폴트 파일 배치
        *인디케이터 추가해보기
    */
    func set(title:String, imageUrl:String)  {
        
        self.titleLb.text = title
        self.imgView.image = UIImage(named: "loading")
        indicatorOut.startAnimating()
        DispatchQueue.global().async {
            self.loadImg(imageUrl: imageUrl)
            
        }
        
        
    }
    
    func loadImg(imageUrl:String){
    
            
        if let url = URL(string: big)
        {
            do{
                let realData =  try Data(contentsOf: url)
                //images.append(UIImage(data:realData)!)
                print("/***loaded imag***/")
                //                    DispatchQueue.main.sync {
                //                        self.collectionView?.reloadData()
                //                    }
                DispatchQueue.main.async {
                    self.imgView.image =  UIImage(data:realData)
                    self.indicatorOut.stopAnimating()
                    self.indicatorOut.isHidden = true
                }
                
            }catch
            {
                return self.imgView.image = UIImage(named: "loading") //에러나면 띄워준다 안써도 된다 위 함수에 기본이미지 적어놨다
            }
            return self.imgView.image = UIImage(named: "loading") //에러나면 띄워준다
        }
    }
}
