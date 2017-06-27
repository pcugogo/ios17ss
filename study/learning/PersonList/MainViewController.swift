//
//  MainViewController.swift
//  PersonList
//
//  Created by 샤인 on 2017. 6. 26..
//  Copyright © 2017년 IosCamp. All rights reserved.
//

import UIKit

class MainViewController: UIViewController,UITableViewDataSource,UITableViewDelegate {

    @IBOutlet weak var tableView: UITableView!
    var personData:[[String:String]] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func viewWillAppear(_ animated: Bool) {
        loadData()
        tableView.reloadData()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return personData.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        let personName = personData[indexPath.row]
        cell.textLabel?.text = personName["Name"]
        return cell
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let detailViewController:DetailViewController = self.storyboard?.instantiateViewController(withIdentifier: "DetailViewController") as! DetailViewController
        let personName = personData[indexPath.row]
        detailViewController.name = personName["Name"]
        let personAge = personData[indexPath.row]
        detailViewController.age = personAge["Age"]
        let personGender = personData[indexPath.row]
        detailViewController.gender = personGender["Gender"]
        
        self.navigationController?.pushViewController(detailViewController, animated: true)
        tableView.deselectRow(at: indexPath, animated: true)
    }

    func loadData(){
        guard let data = UserDefaults.standard.array(forKey: "PersonList") as? [[String:String]] else {
            return print("데이터가 없습니다")
        }
        
        personData = data

    }
    @IBAction func genderFilter(_ sender: UISegmentedControl) {
        
        
        
        if sender.selectedSegmentIndex == 1{
            loadData()
            let genderData = personData.filter({(men:[String:String]) -> Bool in
            return men["Gender"] == "men"
            })
            
            personData = genderData
            tableView.reloadData()
        }else if sender.selectedSegmentIndex == 2{
            loadData()
            let genderData = personData.filter({(women:[String:String]) -> Bool in
                return women["Gender"] == "women"
            })
            
            personData = genderData
            tableView.reloadData()
        }else{
            loadData()
            tableView.reloadData()
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
