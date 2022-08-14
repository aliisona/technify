//
//  ProgressViewController.swift
//  technify
//
//  Created by scholar on 8/14/22.
//

import UIKit

class ProgressViewController: UIViewController {

    @IBAction func takeQuiz(_ sender: UIButton) {
        swift_quiz = QuizResults() //create new instance of object
    }
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
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
