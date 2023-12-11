//
//  StorageManager.swift
//  Simply Motivation
//
//  Created by Тимофей Юдин on 11.12.2023.
//

import Foundation

final class StorageManager {
    static let shared = StorageManager()
    private init() {}
    
    private let userDefaults = UserDefaults.standard
    
    func save(name: String) {
        userDefaults.set(name, forKey: "name")
    }
    
    func getName() -> String {
        guard let name = userDefaults.string(forKey: "name") else { return "" }
        return name
    }
}
