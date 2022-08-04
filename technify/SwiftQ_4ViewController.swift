//
//  SwiftQ_4ViewController.swift
//  technify
//
//  Created by Alisona Le on 8/4/22.
//

import UIKit

class SwiftQ_4ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func sq4_sayHello(_ sender: UIButton) {
        swift_quiz.checkAns(quesType: false)
    }
    
    
    @IBAction func sq4_wave(_ sender: UIButton) {
        swift_quiz.checkAns(quesType: false)

    }
    
    @IBAction func sq4_sayhi(_ sender: UIButton) {
        swift_quiz.checkAns(quesType: false)

    }
    
    @IBAction func sq4_wavehisayhi(_ sender: UIButton) {
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
