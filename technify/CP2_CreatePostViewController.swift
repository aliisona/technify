//
//  SecondCreatePostViewController.swift
//  technify
//
//  Created by Scholar on 8/3/22.
//

import UIKit

var imagePicker = UIImagePickerController()

class CP2_CreatePostViewController: UIViewController, UIImagePickerControllerDelegate, UINavigationControllerDelegate {
    
    @IBOutlet weak var imageDisplay: UIImageView!
    
    @IBOutlet weak var captionTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        imagePicker.delegate = self
        // Do any additional setup after loading the view.
    }
    
    @IBAction func choosePhotoTapped(_ sender: UIButton) {
        present(imagePicker, animated: true, completion : nil)
    }
    
    @IBAction func createPost2(_ sender: UIButton) {
        if let captionSet = captionTextField.text {
            userPost1.caption = captionSet
        }
        
    }
    
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
        if let selectedImage = info[UIImagePickerController.InfoKey.originalImage] as? UIImage {
            imageDisplay.image = selectedImage
            imagePicker.dismiss(animated:true, completion :nil)
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
