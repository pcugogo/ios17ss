//
//  CalculateViewController.swift
//  MoneyCalculation
//
//  Created by 샤인 on 2017. 6. 15..
//  Copyright © 2017년 IosCamp. All rights reserved.
//

import UIKit

class CalculateViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

    @IBOutlet weak var calculateView: UITableView!
    var calculationValue:String?

    var rankContainer:[Int]?
    var names:[String]?
    var priceResult:[Int]?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        calculateView.dataSource = self
        calculateView.delegate = self
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return (names?.count)!
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "DetailCell", for: indexPath)
        
        if priceResult![indexPath.row] == 0
        {
        cell.textLabel?.text = "\(names![(rankContainer?[indexPath.row])!])님 축하합니다~!"
        }else{
        cell.textLabel?.text = "\(names![(rankContainer?[indexPath.row])!])님은 \(priceResult![indexPath.row])원 내세요^^ㅎㅎㅎㅎㅎㅎㅎㅎㅎㅎ"
        }
        
        cell.layer.borderWidth = 1
        
        return cell
        
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
