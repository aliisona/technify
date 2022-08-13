//
//  CA2_CreateAccViewController.swift
//  technify
//
//  Created by scholar on 8/13/22.
//

import UIKit

class CA2_CreateAccViewController: UIViewController, UIImagePickerControllerDelegate, UINavigationControllerDelegate{

    @IBOutlet weak var pFPSelectorImage: UIImageView!
    
    @IBOutlet weak var pFPSelectorBtn: UIButton!
    
    @IBOutlet weak var bioTextField: UITextField!
    
    override func viewDidLoad() {
            super.viewDidLoad()
        pFPSelectorImage.maskCircle();
        pFPSelectorBtn.maskCircle();
        imagePicker.delegate = self
        user1.bio = bioTextField.text!
            // Do any additional setup after loading the view.
        }
        
    @IBAction func choosePhotoTapped(_ sender: UIButton) {
        present(imagePicker, animated: true, completion: nil)
    }
    
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
        if let selectedImage = info[UIImagePickerController.InfoKey.originalImage] as? UIImage {
            pFPSelectorImage.image = selectedImage
            imagePicker.dismiss(animated: true, completion: nil)
        }
    }
    
    @IBAction func finalizeAccount(_ sender: UIButton) {
        user1.bio = bioTextField.text!
        
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */
//
//    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
//        if segue.identifier == "" {
//                let dvc = segue.destination as! ProfileViewController
//            dvc.profileImage.image = pFPSelectorImage.image
//            }
//    }

}
