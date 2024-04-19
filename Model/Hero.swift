//
//  Hero.swift
//  ListAndDataModels
//
//  Created by Luis Esteban Haro on 10/04/24.
//

import Foundation

struct Hero : Codable, Identifiable {
    var id: UUID = UUID()
    var name: String
    var alias: String
    var powers: [String]
    var affiliation: String
    var image_url: String


    static func getHeroes() -> [Hero] {

        //Read file from memory
        if let fileURL = Bundle.main.url(forResource: "heroes", withExtension: "json") {
            do {
                let data = try Data(contentsOf: fileURL)
                let decoder = JSONDecoder()
                let heroes = try decoder.decode([Hero].self, from: data)
                return heroes
            } catch {
                print("Error decoding JSON: \(error)")
                return []
            }
        } else {
            print("File not found")
            return []
        }
    }
}

extension Hero {
    static var mockHero: Hero {
        return Hero(name: "Mock Hero",
                    alias: "Mock Alias",
                    powers: ["Mock Power 1", "Mock Power 2"],
                    affiliation: "Mock Affiliation",
                    image_url: "https://example.com/mock_hero.jpg")
    }
}
