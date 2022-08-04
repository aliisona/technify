//
//  HomePageViewController.swift
//  technify
//
//  Created by Scholar on 8/2/22.
//
//hello

//hi

import UIKit

func getGreetings() -> String {
    let greetings = ["Hello", "Howdy", "Hey", "Hola", "Bonjour", "Welcome", "Guten Tag", "Olá", "Ciao", "Hallo", "안녕하세요", "今日は", "Yasou", "Cześć", "Hallå", "Chào", "Sawubona", "Hej", "Aloha", "Ħelow"]
    let randomGreetIndex = Int.random(in: 0 ..< greetings.count-1)
    
    let randomGreet = greetings[randomGreetIndex]
    return randomGreet
}


class HomePageViewController: UIViewController {
    
    var greeting = getGreetings()
    
    @IBOutlet public var greetingText: UILabel! //set to greeting text
    
    override func viewDidLoad() {
        super.viewDidLoad()
        greetingText.text = "\(greeting), \(user1.username)"
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
