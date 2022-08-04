//
//  profileSettings.swift
//  technify
//
//  Created by Scholar on 8/2/22.
//

public class Profile {
    var username = "genericUsername"
    var email = "genericEmail@emails.com"
    
    var password = "Password123"
    
    var posts = 0
    
    var focus = ""
    
    init(usernameSet : String = "username", emailSet : String = "email", passwordSet : String = "password", focusSet : String = "genericFocus", postsSet : Int = 0) {
        username = usernameSet
        email = emailSet
        password = passwordSet
        focus = focusSet
        posts = postsSet
     }
    
    init(usernameSet : String = "username", focusSet : String = "genericFocus") {
        username = usernameSet
        focus = focusSet
    }
}
