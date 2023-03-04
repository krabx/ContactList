//
//  PersonListViewController.swift
//  ContactList
//
//  Created by Богдан Радченко on 03.03.2023.
//

import UIKit

final class PersonListViewController: UITableViewController {
    var persons: [Person]!
}
// MARK: - UITableViewDataSource
extension PersonListViewController {
    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        persons.count
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        2
    }
    
    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        let sectionName = persons[section].fullName
        
        return sectionName
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "person", for: indexPath)
        var content = cell.defaultContentConfiguration()
        
        switch indexPath.row {
        case 0:
            content.text = persons[indexPath.section].number
            content.image = UIImage(systemName: "phone")
        default:
            content.text = persons[indexPath.section].emailAddress
            content.image = UIImage(systemName: "mail")
        }

        cell.contentConfiguration = content

        return cell
    }
}
