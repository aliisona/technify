//
//  ThirdCreatePostViewController.swift
//  technify
//
//  Created by Scholar on 8/3/22.
//

import UIKit

class CP3_CreatePostViewController: UIViewController {

    @IBOutlet weak var topicText: UILabel!
    
    @IBOutlet weak var captionText: UILabel!
    
    @IBOutlet weak var chosenImage: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        topicText.text = userPost1.title
        captionText.text = userPost1.caption
        chosenImage.image = selectedPostImage

        // Do any additional setup after loading the view.
    }
    
    @IBAction func postCreated(_ sender: UIButton) {
        user1.posts+=1
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
