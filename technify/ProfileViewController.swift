//
//  ProfileViewController.swift
//  technify
//
//  Created by Scholar on 8/3/22.
//

import UIKit

class ProfileViewController: UIViewController {

    @IBOutlet weak var usernameText: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        usernameText.text = user1.username

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
