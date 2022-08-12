//
//  createPostViewController.swift
//  technify
//
//  Created by Scholar on 8/3/22.
//

import UIKit

public var userPost1 = Post()

class createPostViewController1: UIViewController {

    @IBOutlet weak var titleTextField: UITextField!
    
    @IBOutlet weak var createPostLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        createPostLabel.text = "Create \(user1.username)'s Post"

        // Do any additional setup after loading the view.
    }
    
    @IBAction func createPost1(_ sender: UIButton) {
        if let titleSet = titleTextField.text {
            userPost1.title = titleSet
        }
    }
    
}
    
    
    
   
