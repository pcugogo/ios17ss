//
//  PoketMonTableViewController.swift
//  CellViewPractice
//
//  Created by 샤인 on 2017. 6. 4..
//  Copyright © 2017년 IosCamp. All rights reserved.
//

import UIKit

class PoketMonTableViewController: UITableViewController {
//    var loginId:String?
    var userList = UserDefaults.standard.array(forKey: "Email") ?? []
    
    var poketMonNames = PoketMonData.names
    @IBOutlet weak var welcomeLb: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        let welcomeEmail = userList.last
//        var welcomId = loginId ?? "없는 아이디"
//        welcomeLb.text =
        welcomeLb.text = String(describing: welcomeEmail)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

    @IBAction func back(unwindSegue:UIStoryboardSegue){
    }
    
    
//    override func numberOfSections(in tableView: UITableView) -> Int {
//        // #warning Incomplete implementation, return the number of sections
//        return 0
//    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
       let poketMonCount = poketMonNames.count   //포켓몬 이름 수를 카운트해주고 카운트 수 만큼 로우가 늘어난다 0번인덱스에 1번이미지가 들어가고 149번 인덱스에 150번이미지가 들어간다
        return poketMonCount
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        cell.textLabel?.text = poketMonNames[indexPath.row]              //포켓몬 이름을 인덱스에 담아서 텍스트라벨의 텍스트에 담아준다
        cell.imageView?.image = UIImage(named: "\(indexPath.row + 1).png")   //png이미지는 .png를 쓰지 않아도 된다
                                                                         //"()"안은 숫자로, 인덱스.로우는 0부터 위 함수의 카운트된 숫자 -1까지이다 거기에 1을 더해줘 인덱스마다 1이더해지고
                                                                         //그 더해진 숫자가 이미지 이름이기때문에 이미지들이 순서대로 모두 다 들어온다
        return cell
    }
 
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) { //로우를 클릭시
        let poketMonInfoView:PoketMonInfoViewController = self.storyboard?.instantiateViewController(withIdentifier: "PoketMonInfoViewController") as! PoketMonInfoViewController                                                             //스토리보드의 뷰를 인스턴스화한다
        poketMonInfoView.imgName =  "\(indexPath.row + 1).png"
        poketMonInfoView.titleName = PoketMonData.names[indexPath.row] //스태틱을 썻기때문에 포켓몬데이타클래스의 네임스를 바로 가져올수있다 전역변수에있는 poketMonNames을 써도된다
        self.navigationController?.pushViewController(poketMonInfoView, animated: true)
        tableView.deselectRow(at: indexPath, animated: true) //포켓몬인포뷰로 넘어갔다가 오면 선택했던 로우에 드래그가 해제되있다
        
    }
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 100
    }
    

    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
