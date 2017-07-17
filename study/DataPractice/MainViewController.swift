//
//  MainViewController.swift
//  DataPractice
//
//  Created by 샤인 on 2017. 7. 17..
//  Copyright © 2017년 IosCamp. All rights reserved.
//

import UIKit

class MainViewController: UIViewController,UITableViewDataSource,UITableViewDelegate {

   var recipeDatas:[Recipe] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()

            loadData()
            print(recipeDatas)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return DataCenter.shared.recipeArray.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! RecipeCell
        let recipe = recipeDatas[indexPath.row]
       
        cell.foodImg.image = UIImage(named: "\(recipe.recipeID).jpg" )
        cell.nameLb.text = recipe.name
        cell.shortDescriptionLb.text = recipe.shortDescription
        cell.imgTimeLb.text = "\(recipe.time)분"
        
       return cell
        
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let detailViewController:DetailViewController = self.storyboard?.instantiateViewController(withIdentifier: "DetailViewController") as! DetailViewController
        detailViewController.detailData = recipeDatas[indexPath.row]
    
        self.navigationController?.pushViewController(detailViewController, animated: true)
        tableView.deselectRow(at: indexPath, animated: true)
    }
    

    func loadData(){
       recipeDatas = DataCenter.shared.recipeArray
        
    }
}
