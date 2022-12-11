//
//  Landmark.swift
//  Landmarks/Users/DavesMac/Projects/swift/Landmarks/Landmarks/Resources
//
//  Created by David Lively on 12/9/22.
//

import CoreLocation
import Foundation
import SwiftUI

/*
 Identifiable allows you to iterate over the struct via the id
 without having to expressly specify `id: \.id` as the second
 argument in List. I think it implicitly uses id?
 */
struct Landmark: Hashable, Codable, Identifiable {
    var id: Int
    var name: String
    var park: String
    var state: String
    var description: String

    private var imageName: String

    var image: Image {
        Image(imageName)
    }

    private var coordinates: Coordinates

    var locationCoordinate: CLLocationCoordinate2D {
        CLLocationCoordinate2D(
            latitude: coordinates.latitude, longitude: coordinates.longitude
        )
    }

    struct Coordinates: Hashable, Codable {
        var latitude: Double
        var longitude: Double
    }
}
