//
//  ViewController.swift
//  MoneyCalculation
//
//  Created by 샤인 on 2017. 6. 15..
//  Copyright © 2017년 IosCamp. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UITableViewDataSource,UITableViewDelegate {
    

    var names:[String] = []              //이름을 받는 배열
    var randomNumberContainer:[Int] = []    //1~사람숫자만큼의 랜덤숫자를 받는 배열
    
    @IBOutlet weak var countIndicatorLabel: UILabel!    //사람 숫자 표시하는 라벨
    @IBOutlet weak var listTableView: UITableView!      //게임참여자 이름 목록
    @IBOutlet weak var nameTextField: UITextField!      //이름을 적는 텍스트
    @IBOutlet weak var priceTextField: UITextField!     //금액을 넣는 텍스트

    

    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        listTableView.dataSource = self
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    func calculate(price:Int) -> [Int]       // 돈을 계산해주는 함수
    {
        var money = Int(priceTextField.text!)!    //머니에 계산할 금액을 인트로 받는다
        let numberOfPeople = names.count          //참여자 수
        var priceResult:[Int] = []                //계산후 각자 내야할 금액을 담는다
        priceResult.append(0)
        if numberOfPeople >= 3{                   //사람수가 3명이상일때
            for _ in 1...numberOfPeople-2         // 1명이 될때까지
            {                                     // 돈금액을 2/1해주고 돌려서 priceResult에 담아준다
                priceResult.append(money / 2)
                money = money / 2
            }
        }else{
            priceResult.append(money)           //3명보다 적을경우 한명한테 몰아주려고 했는데 둘다 돈을 안내게 된다;
        }
        var thirdValue = 0
        for i in 0..<priceResult.count
        {
            thirdValue  = thirdValue + priceResult[i]   //마지막 계산값 (2등 또는 3등 값을) 을 결과값 배열에 추가할것이다
        }
        
        thirdValue = price - thirdValue
        priceResult.append(thirdValue)
        priceResult.sort()
        return priceResult
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return names.count
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        cell.textLabel?.text = names[indexPath.row]
        
        return cell
    }
    
    
    override func shouldPerformSegue(withIdentifier identifier: String, sender: Any?) -> Bool {

        
        
        if !(priceTextField.text?.isEmpty)! && !(names.isEmpty) && names.count > 1  { // 숫자만 들어올 수 있게하는것도 생각해보자
            return true
        }else{
            let resultAlert:UIAlertController = UIAlertController(title: "오류", message: "추가 리스트와 금액을 입력해주세요", preferredStyle: .alert)
            
            let resultBtnAlert:UIAlertAction = UIAlertAction(title: "예", style: .cancel, handler: nil)
            resultAlert.addAction(resultBtnAlert)
            self.present(resultAlert, animated: true, completion: nil)
            return false
        }
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
      
        let calculateViewController:CalculateViewController = segue.destination as! CalculateViewController

        
        var randomNum = Int(arc4random_uniform((UInt32(names.count))))
        randomNumberContainer.append(randomNum)
        while randomNumberContainer.count < names.count
        {
            randomNum = Int(arc4random_uniform((UInt32(names.count))))
            if !randomNumberContainer.contains(randomNum)
            {
                randomNumberContainer.append(randomNum)
            }
        }
        
        calculateViewController.names = names            //이름 배열,
        calculateViewController.rankContainer = randomNumberContainer //순위
        calculateViewController.priceResult = calculate(price: Int(priceTextField.text!) ?? 0) //순위 별 각각 낼 금액 낮은금액부터 높은금액으로 정렬된상태
        
    }
    
    @IBAction func addButtonTouched(_ sender: UIButton) {
        let newName = nameTextField.text!
        if !names.contains(newName) && newName != ""{
        names.append(newName)
        listTableView.reloadData()
        countIndicatorLabel.text = String("\(names.count)명")
        nameTextField.text?.removeAll()
        }
    }
    @IBAction func removeBtn(_ sender: UIButton) {     //리무브 버튼인데 이름을 잘못썻다
        
        names.removeLast()
        
        listTableView.reloadData()
        countIndicatorLabel.text = String("\(names.count)명")
        
    }

   
}

