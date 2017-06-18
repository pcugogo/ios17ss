//
//  ViewController.swift
//  PropertySample
//
//  Created by 샤인 on 2017. 6. 14..
//  Copyright © 2017년 IosCamp. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        var rect = Rect(origin: Point(x:0, y:0), size: Size(width:100, height:100))
        
        let centerValue = rect.center
        let originValue = rect.origin
        
        print(centerValue)
        print(originValue)
        
        rect.center = Point(x: 100, y: 100)
        rect.size = Size(width: 100, height: 100)
        
        let newCenterValue = rect.center
        let newOrignValue = rect.origin
        
        print(newCenterValue)
        print(newOrignValue)
        
        var myScore = MyClass()
        
        myScore.koreanScore = 100
        myScore.koreanScore = 50 // 중복처리되어 있어서 넘어간다.
        print(myScore.average)
        
        myScore.englishScore = 80
        
        print(myScore.average)
        
        changeValue = 4
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
