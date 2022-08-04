//
//  SwiftQuizMasterViewController.swift
//  technify
//
//  Created by Alisona Le on 8/4/22.
//

import UIKit

public class QuizResults {
    var answered = 0
    var correct = 0
    
    func checkAns(quesType : Bool) {
        if quesType {
            answered+=1
        }
        correct+=1
        print(answered, correct)
    }
    
    func getResults() -> Int {
        let percentage = correct/answered
        return percentage
    }
    
}

class SwiftQuizMasterViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
}

