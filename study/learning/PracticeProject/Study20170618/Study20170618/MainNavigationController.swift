//
//  MainNavigationController.swift
//  Study20170618
//
//  Created by 샤인 on 2017. 6. 18..
//  Copyright © 2017년 IosCamp. All rights reserved.
//

import UIKit

class MainNavigationController: UINavigationController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        presentMainView()
    }
    
    func presentMainView()  {
        let isAuthentified:Bool = UserDefaults.standard.bool(forKey: "Authentification")
        print(isAuthentified)
        
        if !isAuthentified {
            self.performSegue(withIdentifier: "LoginSegue", sender: self)
        }
        
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
