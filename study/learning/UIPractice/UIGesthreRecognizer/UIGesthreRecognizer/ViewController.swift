//
//  ViewController.swift
//  UIGesthreRecognizer
//
//  Created by 샤인 on 2017. 6. 29..
//  Copyright © 2017년 IosCamp. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var tapTouchCount:Int = 0
    @IBOutlet weak var testLb: UILabel!
    @IBOutlet weak var countLb: UILabel!
  
    @IBOutlet weak var imgView: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func tepGesthrAction(_ sender:UITapGestureRecognizer){
        
        tapTouchCount += 1
        testLb.text = "\(sender.location(in: self.view))"
        countLb.text = "\(tapTouchCount)"
        
//        Timer.scheduledTimer(withTimeInterval: 3, repeats: true) { (timer) in //3초마다 액션된다
//            UIView.animate(withDuration: 1, delay: 0.3, usingSpringWithDamping: 0.3, initialSpringVelocity: 0.5, options: [.curveLinear], animations: {
//                self.imgView.layer.transform = CATransform3DMakeScale(3, 3, 1)
//            }) { (isEnd) in
//                self.imgView.layer.transform = CATransform3DMakeScale(1, 1, 1)
//            }
//        }
        UIView.animate(withDuration: 1, delay: 0.3, usingSpringWithDamping: 0.3, initialSpringVelocity: 0.5, options: [.curveLinear], animations: {
            self.imgView.layer.transform = CATransform3DMakeRotation(360*180/3.14, 3, 3, 3) //회전한다 회전축 설정
        }) { (isEnd) in
            self.imgView.layer.transform = CATransform3DMakeScale(1, 1, 1)
        }
        
    }
  
    @IBAction func pinchGesthrAction(_ sender: UIPinchGestureRecognizer) {
        
    }
        
}

