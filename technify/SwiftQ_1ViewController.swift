//
//  SwiftQ_1ViewController.swift
//  technify
//
//  Created by Alisona Le on 8/4/22.
//

import UIKit

var swift_quiz = QuizResults()

class SwiftQ_1ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func ac_1(_ sender: UIButton) {
        swift_quiz.checkAns(quesType: false)
    }
    
    @IBAction func ac_2(_ sender: UIButton) {
        swift_quiz.checkAns(quesType: true)
    }
    
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
