//
//  ThirdCreatePostViewController.swift
//  technify
//
//  Created by Scholar on 8/3/22.
//

import UIKit

class ThirdCreatePostViewController: UIViewController {

    @IBOutlet weak var topicText: UILabel!
    
    @IBOutlet weak var captionText: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        topicText.text = userPost1.title
        captionText.text = userPost1.caption

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
