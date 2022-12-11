//
//  ModelData.swift
//  Landmarks
//
//  Created by David Lively on 12/9/22.
//

import Combine
import Foundation

/*
 SwiftUI subscribes to your observable object, and updates any views that need
 refreshing when the data changes.
 */
final class ModelData: ObservableObject {
    // @Published means that any changes will be broadcast to subscribers
    @Published var landmarks: [Landmark] = load("landmarkData.json")
}

/*
 OUTDATED, but keeping here to explain scope.

 This appears to be available gobally, as we see it used over
 in LandmarkRow.swift without having to include it. The scope
 here is "everything". Kind of weird.

 var landmarks: [Landmark] = load("landmarkData.json")
 */

func load<T: Decodable>(_ filename: String) -> T {
    let data: Data

    guard let file = Bundle.main.url(forResource: filename, withExtension: nil)
    else {
        fatalError("Couldn't find filename \(filename) in main bundle")
    }

    do {
        data = try Data(contentsOf: file)
    } catch {
        fatalError("Couldn't load \(filename) from main bundle:\(error)")
    }

    do {
        let decoder = JSONDecoder()
        return try decoder.decode(T.self, from: data)
    } catch {
        fatalError("Couldn't parse \(filename) as \(T.self):\n\(error)")
    }
}
