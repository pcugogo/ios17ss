
//
//  ViewController.swift
//  OneTwoHundredDiary
//
//  Created by 샤인 on 2017. 6. 14..
//  Copyright © 2017년 IosCamp. All rights reserved.
//

import UIKit

class TableViewController: UIViewController,UITableViewDataSource,UITableViewDelegate,UITextViewDelegate {
    
            
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        
        return 12     //1월부터 12월까지 있기때문에 섹션을 12개 만든다
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        
        switch section {
        case Month.jan.rawValue:  //1월은 31행
            return 31
        case Month.fed.rawValue:
            return 28
        case Month.mar.rawValue:
            return 31
        case Month.apr.rawValue:
            return 30
        case Month.may.rawValue:
            return 31
        case Month.jun.rawValue:
            return 30
        case Month.jul.rawValue:
            return 31
        case Month.aug.rawValue:
            return 31
        case Month.sep.rawValue:
            return 30
        case Month.oct.rawValue:
            return 31
        case Month.nov.rawValue:
            return 30
        case Month.dec.rawValue:
            return 31
        default:
            return 0
        }
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell:MyTableViewCell = tableView.dequeueReusableCell(withIdentifier: "cell") as! MyTableViewCell
        
        cell.setTextLb(labelText: "\(indexPath.row + 1)") //지금 로우가 12개 있기때문에 인덱스패스가 0~11까지있다
        
        if cell.textView.delegate == nil{
            cell.textView.delegate = self
        }
        
        return cell
    }
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return numberOf(Month: section + 1)
        
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 200
    }
   
    func textView(_ textView: UITextView, shouldChangeTextIn range: NSRange, replacementText text: String) -> Bool {
                let newText = (textView.text as NSString).replacingCharacters(in: range, with: text)
                let numberOfChars = newText.characters.count
        
                return numberOfChars < 200
        
        


    }
    func scrollViewWillBeginDragging(_ scrollView: UIScrollView) {
        self.view.endEditing(true)
    }
}

