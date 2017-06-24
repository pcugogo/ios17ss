//
//  ViewController.swift
//  JasonData
//
//  Created by 샤인 on 2017. 6. 21..
//  Copyright © 2017년 IosCamp. All rights reserved.
//

import UIKit

class ViewController: UIViewController {


    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    //Jason(JavaScript Object Notation) 자바스크립트 표현방식이고 데이터 교환하는 포멧 (객체화시켜서 경량화를 함)
    //오버라이드가 XML에 비해 적다 이 표현방식으로 받아 스위프트 표현방식으로 파싱을 해서 쓴다
   
/*[ 
     ["Real":[{["제목":"이게 아닌데"],["시간":"03:04"],["가수":"아이유"]},{["제목":"느리게 하는일"],["시간":"04:12"],["가수":"아이유"]},
              {["제목":"좋은 날"],["시간":"03:53"],["가수":"아이유"]}]
     ],
     ["Palette":[{["제목":"팔레트"],["시간":"03:37"],["가수":"아이유"]},{["제목":"이 지금"],["시간":"02:56"],["가수":"아이유"]}]
     ]
  ]
 앨범 어레이 안에 각각 앨범 딕셔너리가 두개이고 키값이 앨범타이틀 밸류가 노래정보들이다
     노래정보 어레이 안 0,1,2 각각 인덱스마다 딕셔너리들이 있다 [[:[[:]]] 
    */

}

