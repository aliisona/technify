//
//  SwiftQ_2ViewController.swift
//  technify
//
//  Created by Alisona Le on 8/4/22.
//

import UIKit

class SwiftQ_2ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func sq2_emma(_ sender: UIButton) {
        swift_quiz.checkAns(quesType: true)
    }
    
    @IBAction func sq2_marnie(_ sender: UIButton) {
        swift_quiz.checkAns(quesType: false)
    }
    
    @IBAction func sq2_isabella(_ sender: UIButton) {
        swift_quiz.checkAns(quesType: false)
    }
    
    @IBAction func sq2_ella(_ sender: UIButton) {
        swift_quiz.checkAns(quesType: false)
    }
    
    @IBAction func sq2_jenny(_ sender: UIButton) {
        swift_quiz.checkAns(quesType: false)
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
