//
//  ProfileViewController.swift
//  technify
//
//  Created by Scholar on 8/3/22.
//

import UIKit
//most reset vers

class ProfileViewController: UIViewController {

    @IBOutlet weak var usernameText: UILabel!
    
    @IBOutlet weak var postsCountText: UILabel!
    
    @IBOutlet weak var profileImage: UIImageView!
    
    @IBOutlet weak var bioText: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        usernameText.text = ("@\(user1.username)")
        
        postsCountText.text = ("Posts (\(user1.posts))")
        
//        profileImage.image = UIImage(named: "person.fill")?.withRenderingMode(.alwaysTemplate)

        profileImage.maskCircle()
        
        bioText.text = user1.bio

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
