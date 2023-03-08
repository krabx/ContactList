//
//  DataStore.swift
//  ContactList
//
//  Created by Богдан Радченко on 02.03.2023.
//

class DataStore {
    static let shared = DataStore()
    
    let names = [
        "Alex",
        "Ben",
        "Mike",
        "Sam",
        "Adam",
        "Bruce",
        "Joel",
        "Dina",
        "Kate",
        "Anna"
    ]
    
    let surnames = [
        "Smith",
        "Johnson",
        "Jackson",
        "White",
        "Miller",
        "Bin",
        "Bale",
        "Sandler",
        "Robertson",
        "Right"
    ]
    
    let phoneNumbers = [
        "111-111-111",
        "222-222-222",
        "333-333-333",
        "444-444-444",
        "555-555-555",
        "666-666-666",
        "777-777-777",
        "888-888-888",
        "999-999-999",
        "000-000-000"
    ]
    
    let emails = [
        "home@gmail.con",
        "work@gmail.com",
        "user1@gmail.com",
        "price@gmail.com",
        "apple@iCloud.com",
        "google@gmail.com",
        "yandex@yandex.ru",
        "sony@gmail.com",
        "mail@mail.ru",
        "rambler@rambler.ru"
    ]
    
    private init() {
    }
}

