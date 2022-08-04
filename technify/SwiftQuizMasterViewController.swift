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
    var percentage = 0.0
    
    func checkAns(quesType : Bool) {
        if quesType {
            answered+=1
        }
        correct+=1
        print(answered, correct) //testing
    }
    
    func getResults() -> String {
        percentage = correct/answered //this is a double
        let perString = String(Int(percentage) * 100)
        print(percentage) //testing
        
        return "\(perString)%"
    }
    
    func getResultMess() -> String {
        if percentage > 0.80 {
            return "Good job"
        }
        
        else {
            return "Try again"
        }
    }
    
}

class SwiftQuizMasterViewController: UIViewController {

    @IBOutlet weak var resultsMessText: UILabel!
    
    @IBOutlet weak var percentageText: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        resultsMessText.text = swift_quiz.getResultMess()
        percentageText.text = swift_quiz.getResults()
        // Do any additional setup after loading the view.
    }
}

