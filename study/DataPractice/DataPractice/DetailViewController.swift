//
//  DetailViewController.swift
//  DataPractice
//
//  Created by 샤인 on 2017. 7. 17..
//  Copyright © 2017년 IosCamp. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {
    @IBOutlet weak var detailFoodImg: UIImageView!
    
    @IBOutlet weak var detailRecipeTitleLb: UILabel!
    @IBOutlet weak var detailShortDescriptionLb: UILabel!
    @IBOutlet weak var detailTimeAndCost: UILabel!
    @IBOutlet weak var IngredientDetailLb: UILabel!
    @IBOutlet weak var HowToCookLb: UILabel!
   
    var detailData:Recipe!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        detailFoodImg.image = UIImage(named: "\(detailData.recipeID).jpg")
        detailRecipeTitleLb.text = detailData.name
        detailShortDescriptionLb.text = detailData.shortDescription
        detailTimeAndCost.text = "\(detailData.time)분 \(detailData.cost)원"
        IngredientDetailLb.text = detailData.ingrediants
        HowToCookLb.text = detailData.detail
        
        
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
