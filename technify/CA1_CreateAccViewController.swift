//
//  CreateAccountViewController.swift
//  technify
//
//  Created by Scholar on 8/2/22.
//

import UIKit

var completedChecks = 4

public var user1 = Profile(usernameSet: "", emailSet: "", passwordSet: "", focusSet: "")

class CA1_CreateAccViewController: UIViewController {
    
    @IBOutlet weak var usernameTextField: UITextField!
    
    @IBOutlet weak var emailTextField: UITextField!
    
    @IBOutlet weak var passwordTextField: UITextField!
    
    @IBOutlet weak var passwordHiddenImg: UIButton!
    
    @IBOutlet weak var tacSwitch: UISwitch!
    
    @IBOutlet weak var subSwitch: UISwitch!
    
    @IBOutlet weak var mustCompleteLabel: UILabel!
    
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
        user1 = Profile(usernameSet: usernameTextField.text! , emailSet: emailTextField.text!, passwordSet: passwordTextField.text!, focusSet: "NonSelected")

    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        mustCompleteLabel.isHidden = true
        //defaulted to be off
        
        passwordTextField.isSecureTextEntry = true
        usernameTextField.autocorrectionType = .no
        passwordTextField.autocorrectionType = .no
        emailTextField.autocorrectionType = .no
        
        // Do any additional setup after loading the view.
    }
    
    override func shouldPerformSegue(withIdentifier identifier: String, sender: Any?) -> Bool {
        if identifier == "CA1_CA2"{
        
        //checks
            let usernameSuccess = usernameChecker()
            
            let passwordSuccess = passwordChecker()
            
//            let emailText = emailTextField.text!
            
            if !usernameSuccess {
                usernameChecker()
            }
            
            else if emailTextField.text == "" {
                changeMustCompleteLabel(errorText: "Enter an email.")
            }
            else if !passwordSuccess {
                passwordChecker()
            }
        //t&c check
            else if !tacSwitch.isOn{
           //alert "input value"
                changeMustCompleteLabel(errorText: "Must accept terms and conditions.")            }
            else  {
                return true
            }
            
        }
        
        return false
        
    }
        
    func changeMustCompleteLabel(errorText : String) {
        mustCompleteLabel.isHidden = false
        mustCompleteLabel.text = errorText
    }
    
    func usernameChecker() -> Bool {
        let userText = usernameTextField.text!
        var isSuccessful = false
        
        if userText == "" {
            changeMustCompleteLabel(errorText: "Enter a username.")
        }
        
        else if userText.count < 3 {
            changeMustCompleteLabel(errorText: "Usernames must be longer than 3 characters.")
        }
        
        else if userText.contains(",") {
            changeMustCompleteLabel(errorText: "Usernames cannot contain ','.")
        }
        
        else {
            isSuccessful = true
        }
        
        return isSuccessful
    }
    
    func passwordChecker() -> Bool {
        let passwordText = passwordTextField.text!
        var isSuccessful = false
        
        var neededChar = false
        let neededCharList = ["!", "@", "&"]
        
        if passwordText == "" {
            changeMustCompleteLabel(errorText: "Create a password.")
        }
        
        else if passwordText.count < 6 {
            changeMustCompleteLabel(errorText: "Passwords must be at least 6 characters.")
        }
        
//        else if !neededChar {
//            for i in 0...passwordText.count-1 {
//                if passwordText.contains(neededCharList[i]) {
//                 neededChar = true
//                }
//                else {
//                    changeMustCompleteLabel(errorText: "Usernames must contain at least one special character.")
//                }
//            }
//          }
        
        else {
            isSuccessful = true
        }
        
        return isSuccessful
    }
            
}//closeclass

    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

