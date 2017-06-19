//
//  MemoDetailViewController.swift
//  Study20170618
//
//  Created by 샤인 on 2017. 6. 18..
//  Copyright © 2017년 IosCamp. All rights reserved.
//

import UIKit

class MemoDetailViewController: UIViewController {
    var memoTitle:String?
    var memoContent:String?
    var indexpathFromMain:Int?
    var editingMode:Bool?
    
    @IBOutlet weak var titleTextField: UITextField!
    @IBOutlet weak var contentTextField: UITextView!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func saveMode(){
        let memo:[String:String] =  ["Title":titleTextField.text!, "Content":contentTextField.text!]
        var memoList:[Any] = UserDefaults.standard.array(forKey: "MemoList") ?? []
        
        memoList.insert(memo, at: 0)
        
        UserDefaults.standard.set(memoList, forKey: "MemoList")
        print(UserDefaults.standard.array(forKey: "MemoList"))
        print("저장완료")
    }
    func editMode() {
        
        let memo: [String: String] = ["Title": titleTextField.text!, "Content": contentTextField.text!]
        var memoList: [[String: String]] = UserDefaults.standard.array(forKey: "MemoList") as! [[String : String]]
        
        memoList.remove(at: indexpathFromMain!)
        memoList.insert(memo, at: 0)
        
        UserDefaults.standard.set(memoList, forKey: "MemoList")
    }
    

    @IBAction func saveBtnItem(_ sender: UIBarButtonItem) {
        if editingMode == true {
            editMode()
        } else {
            saveMode()
        }
        
        self.navigationController?.popViewController(animated: true)
    }
 

}
