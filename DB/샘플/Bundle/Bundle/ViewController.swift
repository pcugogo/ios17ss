//
//  ViewController.swift
//  Bundle
//
//  Created by Giftbot on 2017. 6. 26..
//  Copyright © 2017년 Giftbot. All rights reserved.
//

import UIKit

final class ViewController: UIViewController {
  var names = [String]()
  
  override func viewDidLoad() {
    super.viewDidLoad()
    
    // 번들 폴더
    //    let bundlePath = Bundle.main.bundlePath
    //    print("bundle Path :", bundlePath)
    
    // 홈 경로
    //    let homePath = NSHomeDirectory()
    //    print("home Path :", homePath)
    
    // 홈 경로에서 도큐먼트 폴더 경로 얻기
    //    let documentPath2 = NSHomeDirectory() + "/Documents"
    //    print("document path2 :", documentPath2)
    
    // 번들 내 리소스 경로
    let path = Bundle.main.path(forResource: "idols", ofType: "plist")!
    print("resource path :", path)
    
    guard let content = NSArray(contentsOfFile: path) as? Array<String> else { return }
    names = content
    
    // 번들 폴더에서 도큐먼트 폴더로 복사
    let documentPath = NSSearchPathForDirectoriesInDomains(.documentDirectory, .userDomainMask, true)[0]
    let destPath = documentPath + "/copied.plist" //여기에 저장하겠다고 피리스트 앞에 파일이름을 만들었다
    print("document path :", documentPath)
    
    let fm = FileManager.default
    if !fm.fileExists(atPath: destPath) {
//        try? fm.copyItem(at: <#T##URL#>, to: <#T##URL#>) error -> nil ?면 닐
//        try! fm.copyItem(at: <#T##URL#>, to: <#T##URL#>) error -> crash !면 크래쉬 캐치가 필요없다
//         try fm.copyItem(at: <#T##URL#>, to: <#T##URL#>) error ->크러쉬면 캐치로 넘어감
      do {
        try fm.copyItem(atPath: path, toPath: destPath)
        print("도큐먼트 폴더에 파일 복사 완료")
      } catch let error {
        print("파일 복사 에러 :", error.localizedDescription)
      }
    } else {
      print("도큐먼트 폴더에 파일 있음. 복사 안함")
    }
    
    // 도큐먼트 폴더 내 파일 목록 출력
    if let files = try? fm.contentsOfDirectory(atPath: documentPath) {
      print("\(files.count) Files in Documents : \(files)")
    }
    
    guard let data = NSArray(contentsOfFile: destPath) else { return }
    
    //idols bundle 읽기전용
    //copied.plist 읽기 쓰기
    
    //let data <- copied.plist
    
    //Array
    //Dictionary
    //Interger
    //String
    
    if !data.contains("마마무") { //마마무가 있는지 확인
      // 복사한 파일에 추가 데이터 삽입
      let newData = data.adding("마마무") //없으면 추가
      (newData as NSArray).write(toFile: destPath, atomically: true)
    }
    
    // 바뀐 데이터를 다시 파일에 입력
    guard let newContent = NSArray(contentsOfFile: destPath) as? Array<String> else { return }
    print(newContent)
    names = newContent
  }
}


extension ViewController: UITableViewDataSource {
  func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    return names.count
  }
  
  func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    let cell = tableView.dequeueReusableCell(withIdentifier: "idolCell", for: indexPath)
    cell.textLabel?.text = names[indexPath.row]
    return cell
  }
}
