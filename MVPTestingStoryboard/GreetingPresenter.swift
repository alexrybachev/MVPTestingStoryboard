//
//  GreetingPresenter.swift
//  MVPTestingStoryboard
//
//  Created by Aleksandr Rybachev on 03.11.2021.
//

import Foundation

protocol GreetingPresenterProtocol {
    init(view: GreetingViewProtocol, person: Person)
    func showGreeting()
}

class GreetingPresenter: GreetingPresenterProtocol {
    
    unowned let view: GreetingViewProtocol
    let person: Person
    
    required init(view: GreetingViewProtocol, person: Person) {
        self.view = view
        self.person = person
    }
    
    func showGreeting() {
        let greeting = "Hello, \(person.name) \(person.surname)!"
        view.setGreeting(greeting)
    }
}
