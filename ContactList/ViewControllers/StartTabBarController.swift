//
//  StartTabBarController.swift
//  ContactList
//
//  Created by Богдан Радченко on 08.03.2023.
//

import UIKit

final class StartTabBarController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        sendContacts()
    }
    
    private func sendContacts() {
        guard let contactsVC = viewControllers?[0] as? ContactListViewController else { return }
        guard let personsVC = viewControllers?[1] as? PersonListViewController else { return }
        
        let persons = Person.getPersons()
        
        contactsVC.contacts = persons
        personsVC.persons = persons
    }
}
