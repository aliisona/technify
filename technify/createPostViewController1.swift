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
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func createPost1(_ sender: UIButton) {
        if let titleSet = titleTextField.text {
            userPost1.title = titleSet
        }
    }
    
}
    
    
    
   
