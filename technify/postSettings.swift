//
//  postSettings.swift
//  technify
//
//  Created by Scholar on 8/3/22.
//

import UIKit

public class Post {
    var title = ""
    var caption = ""
        
    init(titleSet : String = "title", captionSet : String = "no caption") {
        title = titleSet
        caption = captionSet
    }

}
