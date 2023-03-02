//
//  Person.swift
//  ContactList
//
//  Created by Богдан Радченко on 02.03.2023.
//

import Foundation

struct Person {
    let fullName: String
    let number: String
    let emailAddress: String
    
    static func getPerson() -> [Person] {
        
        var persons: [Person] = []
        
        var shuffledNames = names.shuffled()
        var shuffledSurnames = surnames.shuffled()
        var shuffledNumbers = phoneNumbers.shuffled()
        var shuffledEmails = emails.shuffled()
        
        while shuffledNames.count != 0 {
            let person = Person(fullName: shuffledNames.remove(at: Int.random(in: 0..<shuffledNames.count)) + " " + shuffledSurnames.remove(at: Int.random(in: 0..<shuffledSurnames.count)), number: shuffledNumbers.remove(at: Int.random(in: 0..<shuffledNumbers.count)), emailAddress: shuffledEmails.remove(at: Int.random(in: 0..<shuffledEmails.count)))
            
            persons.append(person)
        }
        
        return persons
    }
}


