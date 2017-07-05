//
//  ViewController.swift
//  AppLifeCycle
//
//  Created by 샤인 on 2017. 3. 31..
//  Copyright © 2017년 샤인. All rights reserved.
//

import UIKit

class ViewController: UIViewController { //UIViewController:뷰를 매니징하는 인프라스트럭쳐

//    override func loadView() { //이 호출을 사용하면 안된다 유아이뷰컨트롤러를 사용할 수 없다 스토리보드를 사용하지않고 수동으로 하드코딩으로 뷰를 만들때 사용한다 
//    If you use Interface Builder to create your views and initialize the view controller, you must not override this method.
//        super.loadView() 슈퍼를 콜하면 의미가 없어진다
//        print("loadView")
//    }
    override func viewDidLoad() {  //초기화 컨트롤러뷰가 메모리에 로딩이 되어지고 나서 호출된다 제일 먼저 호출된다
        super.viewDidLoad()
        print("viewDidLoad")
    }

    override func viewWillAppear(_ animated: Bool) { //뷰가 나타나기 직전 화면에 보여지기 바로 직전에 호출이된다 뷰가 보여지기직전에 수정할때 사용한다 예를 들어 어떤앱을 보면 아이폰설정에서 설정하는 설정들이 창을 내리지않아도 앱내에서 설정하는 기능이 있는 앱이 있다 이때 뷰디드로드는 이미 로딩 되어있기때문에 수정된 설정을 바로 입력시켜보여지게 하려면 뷰윌어피어를 사용하게 된다 다른화면으로 갔다가 올때
        super.viewWillAppear(true) //뷰가 나타납니다 //슈퍼.뷰윌어피어(애니메이티드?) 이것을 사용할때 이렇게하고
                                   //이 함수안에 어떤 액션을 넣는다
        print("viewWillAppear")
    }
    override func viewDidAppear(_ animated: Bool) { //화면에 보여지고 나서 호출이 된다 //뷰가 나타났다
        super.viewWillAppear(true)
        print("viewDidAppear")
    }
    //뷰윌레이아웃서비스
    //뷰딛레이아웃서비스
    
    override func viewWillDisappear(_ animated: Bool) { //뷰가 사라집니다
        super.viewWillAppear(true)
        print("viewWillDisappear")
    }
    override func viewDidDisappear(_ animated: Bool) { //뷰가 사라졌다
        super.viewDidDisappear(true)
        print("viewDidDisappear")
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

