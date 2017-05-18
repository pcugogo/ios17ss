//
//  ViewController.swift
//  gradepoint
//
//  Created by 샤인 on 2017. 5. 17..
//  Copyright © 2017년 IosCamp. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        let s1:Studunt = Studunt(name: "Park")
        s1.addSubject(subjectName: "수학", score: 99)
        s1.addSubject(subjectName: "과학", score: 99)
        s1.addSubject(subjectName: "국어", score: 99)
        s1.addSubject(subjectName: "컴퓨터", score: 99)
        
        
        let s2:Studunt = Studunt(name: "Lee")
        s2.addSubject(subjectName: "수학", score: 99)
        s2.addSubject(subjectName: "과학", score: 99)
        s2.addSubject(subjectName: "국어", score: 99)
        s2.addSubject(subjectName: "컴퓨터", score: 99)
        
        let manager:ScoreManager = ScoreManager()
        let s1Average = manager.average(forStudent: s1)
        let s2Average = manager.average(forStudent: s2)
        
        print(s1Average)
        print(s2Average)
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


    
    
    
    
    
}

