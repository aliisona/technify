//
//  SecondCreatePostViewController.swift
//  technify
//
//  Created by Scholar on 8/3/22.
//

import UIKit

class SecondCreatePostViewController: UIViewController {

    @IBOutlet weak var captionTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func createPost2(_ sender: UIButton) {
        if let captionSet = captionTextField.text {
            userPost1.caption = captionSet
        }
        
    
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
