//
//  Person.swift
//  ContactList
//
//  Created by Богдан Радченко on 02.03.2023.
//

struct Person {
    let name: String
    let surname: String
    let number: String
    let emailAddress: String
    
    var fullName: String {
        name + " " + surname
    }
    
    static func getPersons() -> [Person] {
        
        var persons: [Person] = []
        
        let names = DataStore.shared.names.shuffled()
        let surnames = DataStore.shared.surnames.shuffled()
        let numbers = DataStore.shared.phoneNumbers.shuffled()
        let emails = DataStore.shared.emails.shuffled()
        
        let minCount = min(names.count, surnames.count, numbers.count, emails.count)
        
        for index in 0..<minCount {
            let person = Person(
                name: names[index],
                surname: surnames[index],
                number: numbers[index],
                emailAddress: emails[index]
            )
            persons.append(person)
        }
        return persons
    }
}
