//
//  MainViewController.swift
//  Study20170618
//
//  Created by 샤인 on 2017. 6. 18..
//  Copyright © 2017년 IosCamp. All rights reserved.
//

import UIKit

class MainViewController: UIViewController,UITableViewDataSource,UITableViewDelegate {
    
    var memoData:[[String:String]] = []
    
    @IBOutlet weak var MainTableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        MainTableView.delegate = self
        MainTableView.dataSource = self
        
        print(UserDefaults.standard.dictionary(forKey: "Title"))
    }
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        loadData()
        MainTableView.reloadData()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 0
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return memoData.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath)
        
        let memoTitle = memoData[indexPath.row]
        
        cell.textLabel?.text = memoTitle["Title"]
        
        return cell
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let toDetailView:MemoDetailViewController = segue.destination as! MemoDetailViewController
        
        if segue.identifier == "editSegue"{
            let cell = sender as! UITableViewCell
            guard let indexPath = MainTableView.indexPath(for: cell) else {
                return print("indexPath를 가져오지 못했습니다.")
            }
            
            let memo:[String:String] = memoData[indexPath.row]
            toDetailView.memoTitle = memo["Title"]
            toDetailView.memoContent = memo["Content"]
            toDetailView.indexpathFromMain = indexPath.row
            toDetailView.editingMode = true
            
        }else if segue.identifier == "addSegue"{
            toDetailView.editingMode = false
        }
        
    }
    
    func loadData(){
        
        guard let Data = UserDefaults.standard.array(forKey: "MemoList") as? [[String:String]] else {
            return print("데이터가 없습니다")
        }
        print(UserDefaults.standard.array(forKey: "MemoList"))
        memoData = Data
        
        
    }
    

    
    @IBAction func logoutBtnTouched(_ sender: UIBarButtonItem) {
        
        UserDefaults.standard.set(false, forKey: "Authentification")
        
        let byLoginView:MainNavigationController = self.navigationController as! MainNavigationController
        byLoginView.presentMainView()
        
        print("로그아웃")
        
        
    }
    
}
