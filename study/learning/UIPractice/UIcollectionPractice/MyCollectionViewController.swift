//
//  MyCollectionViewController.swift
//  UIcollectionPractice
//
//  Created by 샤인 on 2017. 7. 3..
//  Copyright © 2017년 IosCamp. All rights reserved.
//

import UIKit

private let reuseIdentifier = "Cell"

class MyCollectionViewController: UICollectionViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Register cell classes
//        self.collectionView!.register(UICollectionViewCell.self, forCellWithReuseIdentifier: reuseIdentifier)Z
        // Do any additional setup after loading the view.
        self.collectionView?.allowsMultipleSelection = true //디셀렉트는 얘가 트루될때만 사용가능
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using [segue destinationViewController].
        // Pass the selected object to the new view controller.
    }
    */

    // MARK: UICollectionViewDataSource

    override func numberOfSections(in collectionView: UICollectionView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }


    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of items
        return DataCenter.center.friendList.count
    }

    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell:BasicCollectionViewCell = collectionView.dequeueReusableCell(withReuseIdentifier: reuseIdentifier, for: indexPath) as! BasicCollectionViewCell
        cell.set(title: DataCenter.center.friendList[indexPath.item])
        
    
        return cell
    }

    // MARK: UICollectionViewDelegate

    
    // Uncomment this method to specify if the specified item should be highlighted during tracking
    override func collectionView(_ collectionView: UICollectionView, shouldHighlightItemAt indexPath: IndexPath) -> Bool {
        return true
    }
    
    override func collectionView(_ collectionView: UICollectionView, didHighlightItemAt indexPath: IndexPath) {
       let cell = collectionView.cellForItem(at: indexPath)
        cell?.backgroundColor = .gray //이 위에 셀렉티드 백그라운드가 올라오기때문에 여기 그레이를 줘도 셀렉티드백그라운드 색상이 올라와서 나타나지 않는다 항상 셀렉티드백그라운드는 존재하지만 히든 되있는 것이다
    }
    
    override func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
       let detailViewController:DetailViewController = self.storyboard?.instantiateViewController(withIdentifier: "DetailViewController") as! DetailViewController
      
        
        
//        navigationController?.pushViewController(detailViewController, animated: true)
    }
    
    
    
    override func collectionView(_ collectionView: UICollectionView, didUnhighlightItemAt indexPath: IndexPath) {
        let cell = collectionView.cellForItem(at: indexPath)
        cell?.backgroundColor = nil
    }
    
    // Uncomment this method to specify if the specified item should be selected
    override func collectionView(_ collectionView: UICollectionView, shouldSelectItemAt indexPath: IndexPath) -> Bool {
        return true
    }
    
  

    @IBAction func dupleBtnAction(_ sender: UIButton) {
        self.collectionView?.performBatchUpdates({
            if let indexPathItems = self.collectionView?.indexPathsForSelectedItems{
                //DataUpdate
                DataCenter.center.insertItems(at: indexPathItems)
                
                //UI UPdate
                self.collectionView?.insertItems(at: indexPathItems)
                
                
            }
        }, completion: nil)
    }
    
//    override func collectionView(_ collectionView: UICollectionView, canMoveItemAt indexPath: IndexPath) -> Bool {
////        return true
//    }
    override func collectionView(_ collectionView: UICollectionView, moveItemAt sourceIndexPath: IndexPath, to destinationIndexPath: IndexPath) {
        
        collectionView.moveItem(at: sourceIndexPath, to: destinationIndexPath)
    }
    
    // 뷰컨에서는 제스쳐 롱프레스를 이요애서 스위치 비긴 체인지드 엔디드 디폴트로 사용
    
//    @IBAction func dupleBtn(_ sender: UIBarButtonItem) {
//        
//        self.collectionView?.performBatchUpdates({ 
//            if let indexPathItems = self.collectionView?.indexPathsForSelectedItems{
//                self.collectionView?.insertItems(at: indexPathItems)
//            }
//        }, completion: nil)
//    }
    /*
    // Uncomment these methods to specify if an action menu should be displayed for the specified item, and react to actions performed on the item
    override func collectionView(_ collectionView: UICollectionView, shouldShowMenuForItemAt indexPath: IndexPath) -> Bool {
        return false
    }

    override func collectionView(_ collectionView: UICollectionView, canPerformAction action: Selector, forItemAt indexPath: IndexPath, withSender sender: Any?) -> Bool {
        return false
    }

    override func collectionView(_ collectionView: UICollectionView, performAction action: Selector, forItemAt indexPath: IndexPath, withSender sender: Any?) {
    
    }
    */

}
