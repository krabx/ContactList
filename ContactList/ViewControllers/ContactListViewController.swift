//
//  ContactListViewController.swift
//  ContactList
//
//  Created by Богдан Радченко on 03.03.2023.
//

import UIKit

class ContactListViewController: UITableViewController {
    
    let persons = Person.getPerson()

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let contactInfoVC = segue.destination as? ContactInfoViewController
        guard let index = tableView.indexPathForSelectedRow else { return }
        contactInfoVC?.persons = persons[index.row]
    }

}

// MARK: - UITableViewDataSource

extension ContactListViewController {
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        persons.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "person", for: indexPath)
        var content = cell.defaultContentConfiguration()
        
        content.text = persons[indexPath.row].fullName
        
        cell.contentConfiguration = content
        
        return cell
    }
}

extension ContactListViewController {
}
