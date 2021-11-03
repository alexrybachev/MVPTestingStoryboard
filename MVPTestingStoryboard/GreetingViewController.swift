//
//  GreetingViewController.swift
//  MVPTestingStoryboard
//
//  Created by Aleksandr Rybachev on 03.11.2021.
//

import UIKit

class GreetingViewController: UIViewController {

    @IBOutlet var greetingLabel: UILabel!
    
    private var person: Person!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        person = Person(name: "Tim", surname: "Cook")
    }

    @IBAction func showGreetingPressed() {
        greetingLabel.text = "Hello, \(person.name) \(person.surname)!"
    }
    
}

