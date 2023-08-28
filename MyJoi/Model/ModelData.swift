//
//  ModelData.swift
//  MyJoi
//
//  Created by Kaan Okman on 2023-08-27.
//

import Foundation

var landmarks: [Landmark] = load("landmarkData.json")

// fecthes JSON data with a given name from the app's main bundle
// relies on conformance of Decodable protocol which is a component of Codable assigned to the Landmark structure
func load<T: Decodable>(_ filename: String) -> T {
    let data: Data


    guard let file = Bundle.main.url(forResource: filename, withExtension: nil)
    else {
        fatalError("Couldn't find \(filename) in main bundle.")
    }


    do {
        data = try Data(contentsOf: file)
    } catch {
        fatalError("Couldn't load \(filename) from main bundle:\n\(error)")
    }


    do {
        let decoder = JSONDecoder()
        return try decoder.decode(T.self, from: data)
    } catch {
        fatalError("Couldn't parse \(filename) as \(T.self):\n\(error)")
    }
}
