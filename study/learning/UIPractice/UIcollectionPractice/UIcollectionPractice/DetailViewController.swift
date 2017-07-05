//
//  DetailViewController.swift
//  UIcollectionPractice
//
//  Created by 샤인 on 2017. 7. 3..
//  Copyright © 2017년 IosCamp. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {

    @IBOutlet weak var detailLb: UILabel!
    
    
    var titleText:String = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        detailLb.text = titleText
        
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
