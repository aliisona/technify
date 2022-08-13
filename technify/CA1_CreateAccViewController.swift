//
//  CreateAccountViewController.swift
//  technify
//
//  Created by Scholar on 8/2/22.
//

import UIKit

public var user1 = Profile(usernameSet: "", emailSet: "", passwordSet: "", focusSet: "")

class CA1_CreateAccViewController: UIViewController {
    
    @IBOutlet weak var usernameTextField: UITextField!
    
    @IBOutlet weak var emailTextField: UITextField!
    
    @IBOutlet weak var passwordTextField: UITextField!
    
    @IBOutlet weak var passwordHiddenImg: UIButton!
    
    @IBOutlet weak var tacSwitch: UISwitch!
    
    @IBOutlet weak var subSwitch: UISwitch!
    
    var passBtnTap : Bool =  false
    
    @IBAction func passwordHiddenBtnTapped(_ sender: UIButton) {
        
        passBtnTap = !passBtnTap

                
        if passBtnTap {
            passwordHiddenImg.setImage(UIImage(systemName: "eye.fill"), for: .normal)
            passwordTextField.isSecureTextEntry = false
            print("password_shown")
        }
        
        else {
            passwordHiddenImg.setImage( UIImage(systemName: "eye.slash.fill"), for: .normal)

            passwordTextField.isSecureTextEntry = true
            print("password_hidden")
        }
        
        
    }
    
    @IBAction func createAccountTapped(_ sender: UIButton) {
        
        if tacSwitch.isOn {
        user1 = Profile(usernameSet: usernameTextField.text! , emailSet: emailTextField.text!, passwordSet: passwordTextField.text!, focusSet: "NonSelected")
        }

    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        passwordTextField.isSecureTextEntry = true

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
