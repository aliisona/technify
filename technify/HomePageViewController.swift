//
//  HomePageViewController.swift
//  technify
//
//  Created by Scholar on 8/2/22.
//

import UIKit

class HomePageViewController: UIViewController {

    @IBOutlet weak var taskProgressBar: UIProgressView! //refer to when completing taskss
    
    @IBOutlet public var greetingText: UILabel! //set to greeting text
    
    override func viewDidLoad() {
        super.viewDidLoad()
        greetingText.text = "Hello, \(user1.username)"
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
