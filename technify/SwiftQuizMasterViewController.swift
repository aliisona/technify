//
//  SwiftQuizMasterViewController.swift
//  technify
//
//  Created by Alisona Le on 8/4/22.
//

import UIKit

public class QuizResults {
    var answered = 0.0
    var correct = 0.0
    
    func checkAns(quesType : Bool) {
        if quesType {
            answered+=1
        }
        correct+=1
        print(answered, correct)
    }
    
    func getResults() -> Double {
        let percentage = correct/answered
        return percentage
    }
    
    func getResultMess(percentage : Double) -> String {
        if percentage > 0.80 {
            return "Good job"
        }
        
        else {
            return "Try again"
        }
    }
    
}

class SwiftQuizMasterViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
}

