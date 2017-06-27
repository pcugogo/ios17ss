//
//  DetailViewController.swift
//  PersonList
//
//  Created by 샤인 on 2017. 6. 26..
//  Copyright © 2017년 IosCamp. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {
    
//    let friendLists:[[String:Any]]?
    var name:String?
    var age:String?
    var gender:String?
    
    
    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var ageTextField: UITextField!
   
    @IBOutlet weak var genderPick: UISegmentedControl!
    override func viewDidLoad() {
        super.viewDidLoad()
        nameTextField.text = name
        ageTextField.text = age
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func saveRequest(){
        let personInfo:[String:String] = ["Name":nameTextField.text!,"Age":ageTextField.text!,"Gender":genderPick.titleForSegment(at:genderPick.selectedSegmentIndex)!]
        var personList:[Any] = UserDefaults.standard.array(forKey: "PersonList") ?? []
        personList.append(personInfo)
        
        UserDefaults.standard.set(personList, forKey: "PersonList")

    }
  
    @IBAction func saveBtn(_ sender: UIBarButtonItem) {
        saveRequest()
        navigationController?.popViewController(animated: true)
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
