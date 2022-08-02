//
//  WelcomeBackViewController.swift
//  technify
//
//  Created by Scholar on 8/2/22.
//

import UIKit


class WelcomeBackViewController: UIViewController {

    @IBOutlet public weak var usernameTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func LoginTapped(_ sender: UIButton) {
        user1 = Profile(usernameSet: usernameTextField.text! ,  focusSet: "NonSelected")
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
