//
//  HomePageViewController.swift
//  technify
//
//  Created by Scholar on 8/2/22.
//

import UIKit

class HomePageViewController: UIViewController {
    
    func randomizer(lowBound : Int, highBound : Int) -> Int {
      let randomInt = Int.random(in: lowBound ..< highBound)
      return randomInt
    }
    
//    var greetings = ["Hello", "Woot"]
//
//    var randomText = randomizer(lowBound: 0, highBound: greetings.count-1 )
//
    @IBOutlet weak var taskProgressBar: UIProgressView! //refer to when completing taskss
    
    @IBOutlet public var greetingText: UILabel! //set to greeting text
    
    override func viewDidLoad() {
        super.viewDidLoad()
        greetingText.text = "Howdy, \(user1.username)"
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
