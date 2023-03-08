//
//  ContactInfoViewController.swift
//  ContactList
//
//  Created by Богдан Радченко on 03.03.2023.
//

import UIKit

class ContactInfoViewController: UIViewController {
    
    @IBOutlet var numberLabel: UILabel!
    @IBOutlet var emailLabel: UILabel!
    
    var persons: Person!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        title = persons.fullName
        numberLabel.text = persons.number
        emailLabel.text = persons.emailAddress
    }

}
