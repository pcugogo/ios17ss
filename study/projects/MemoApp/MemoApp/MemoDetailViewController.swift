//
//  MemoDetailViewController.swift
//  MemoApp
//
//  Created by 샤인 on 2017. 6. 10..
//  Copyright © 2017년 IosCamp. All rights reserved.
//

import UIKit

class MemoDetailViewController: UIViewController,UITextFieldDelegate {
    
    var memoTitle:String?
    var contents:String?
    var indexPath:Int?
    var editingMode:Bool?
    
    @IBOutlet weak var titleTextField: UITextField!
    @IBOutlet weak var contentsTextView: UITextView!
   
    override func viewDidLoad() {
        super.viewDidLoad()

       titleTextField.text = memoTitle
       contentsTextView.text = contents ?? ""
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    func memoDataList(){
        var memo:[String:Any] = [:]
      
        
        memo.updateValue(titleTextField.text!, forKey: "Title")
        memo.updateValue(contentsTextView.text!, forKey: "Contents")
        
        var memoList:[Any] = UserDefaults.standard.array(forKey: "memoList") ?? []
         memoList.insert(memo, at:0)
        
        UserDefaults.standard.set(memoList, forKey: "memoList")
    }
    
    
    
    func saveRequest() {
        if editingMode == true {
            var memoList = UserDefaults.standard.array(forKey: "memoList")

            memoList?[indexPath!] = ["Title":titleTextField.text!, "Contents":contentsTextView.text!] //키:밸류
            UserDefaults.standard.set(memoList, forKey: "memoList")
            
            self.navigationController?.popViewController(animated: true)
        }else if editingMode == false {
            memoDataList()
            
            self.navigationController?.popViewController(animated: true)
        }
    }
    
    func saveException(){
        if titleTextField.text == ""{
            var memoList = UserDefaults.standard.array(forKey: "memoList") as? [[String:String]] ?? []
            
            memoList[indexPath!] = ["Title":contentsTextView.text!, "Contents":contentsTextView.text!]
            
            UserDefaults.standard.set(memoList, forKey: "memoList")
        }
    }
    func removeRequest(){
        
        var memoList = UserDefaults.standard.array(forKey: "memoList") as? [[String:String]]
        
        memoList?.remove(at: indexPath!)
        
        UserDefaults.standard.set(memoList, forKey: "memoList")
        self.navigationController?.popViewController(animated: true)
    }

    
    
    
    
  
    @IBAction func saveBtn(_ sender: UIButton) {
        saveRequest()
        saveException()
     
    }
  
    @IBAction func removeBtn(_ sender: UIButton) {
        removeRequest()
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
