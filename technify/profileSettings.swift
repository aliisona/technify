//
//  profileSettings.swift
//  technify
//
//  Created by Scholar on 8/2/22.
//

import UIKit

public class Profile {
    var username = "genericUsername"
    var email = "genericEmail@emails.com"
    
    var password = "Password123"
    
    var posts = 0
    
    var focus = ""
    
    var bio = "genericBio"
    
    var pfp = UIImage(named:"person.fill")
    
    init(usernameSet : String = "username", emailSet : String = "email", passwordSet : String = "password", focusSet : String = "genericFocus", postsSet : Int = 0, bioSet : String = "I love to code", pfpSetString : String) {
        username = usernameSet
        email = emailSet
        password = passwordSet
        focus = focusSet
        posts = postsSet
        bio = bioSet
        pfp = UIImage(named: pfpSetString)
     }
    
}

extension UIImageView { //code to make profile pic a circle
    func maskCircle() {
        self.layer.cornerRadius = self.frame.width / 2;
        self.layer.masksToBounds = true
    }
}

extension UIButton { //code to make profile pic a circle
    func maskCircle() {
        self.layer.cornerRadius = self.frame.width / 2;
        self.layer.masksToBounds = true
    }
}

