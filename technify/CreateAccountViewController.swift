//
//  CreateAccountViewController.swift
//  technify
//
//  Created by Scholar on 8/2/22.
//

import UIKit

public var user1 = Profile(usernameSet: "", emailSet: "", passwordSet: "", focusSet: "")

class CreateAccountViewController: UIViewController {
    
    @IBOutlet weak var usernameTextField: UITextField!
    
    @IBOutlet weak var emailTextField: UITextField!
    
    @IBOutlet weak var passwordTextField: UITextField!
    
    @IBOutlet weak var tacSwitch: UISwitch!
    
    @IBOutlet weak var subSwitch: UISwitch!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func createAccountTapped(_ sender: UIButton) {
        
        if tacSwitch.isOn {
        user1 = Profile(usernameSet: usernameTextField.text! , emailSet: emailTextField.text!, passwordSet: passwordTextField.text!, focusSet: "NonSelected")
        }

    }
    
    @IBAction func passTypeText(_ sender: UITextField) {
        
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
