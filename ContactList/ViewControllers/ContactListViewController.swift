//
//  ContactListViewController.swift
//  ContactList
//
//  Created by Богдан Радченко on 03.03.2023.
//

import UIKit

final class ContactListViewController: UITableViewController {
    var contacts: [Person]!
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let contactInfoVC = segue.destination as? ContactInfoViewController
        guard let index = tableView.indexPathForSelectedRow else { return }
        contactInfoVC?.persons = contacts[index.row]
    }
}

// MARK: - UITableViewDataSource
extension ContactListViewController {
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        contacts.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "person", for: indexPath)
        var content = cell.defaultContentConfiguration()
        
        content.text = contacts[indexPath.row].fullName
        
        cell.contentConfiguration = content
        
        return cell
    }
}
