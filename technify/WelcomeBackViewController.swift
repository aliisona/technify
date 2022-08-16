//
//  WelcomeBackViewController.swift
//  technify
//
//  Created by Scholar on 8/2/22.
//

import UIKit

class WelcomeBackViewController: UIViewController {

    @IBOutlet public weak var usernameTextField: UITextField!
        
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func LoginTapped(_ sender: UIButton) {
        user1 = Profile(usernameSet: usernameTextField.text! ,  focusSet: "NonSelected")
        
        if let context = (UIApplication.shared.delegate as? AppDelegate)?.persistentContainer.viewContext {

          // new ToDoCD object here, naming it toDo
          let user1 = ProfileCD(entity: ProfileCD.entity(), insertInto: context)

          // if the titleTextField has text, we will call that text titleText
            user1.username = usernameTextField.text!

          try? context.save()

          navigationController?.popViewController(animated: true)
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
