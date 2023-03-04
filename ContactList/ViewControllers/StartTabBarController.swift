//
//  StartTabBarController.swift
//  ContactList
//
//  Created by Богдан Радченко on 04.03.2023.
//

import UIKit

final class StartTabBarController: UITabBarController {
    let persons = Person.getPerson()

    override func viewDidLoad() {
        super.viewDidLoad()
        sendContacts()
    }
    
    private func sendContacts() {
        guard let tabBarViewControllers = viewControllers else { return }
        for tabBarViewController in tabBarViewControllers {
            guard let navigationVC = tabBarViewController as? UINavigationController else { return }
            if let contactListVC = navigationVC.topViewController as? ContactListViewController {
                contactListVC.contacts = persons
            } else if let personListVC = navigationVC.topViewController as? PersonListViewController {
                    personListVC.persons = persons
            }
        }
    }
}
