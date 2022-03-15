/*
See LICENSE folder for this sample’s licensing information.

Abstract:
A representation of a single landmark.
*/

import Foundation
import SwiftUI
import CoreLocation

struct Landmark: Hashable, Codable, Identifiable {
    var id: Int
    var name: String
    var park: String
    var state: String
    var description: String
    var isFavorite: Bool
    
    init(id: Int = .random(in: 999...10000), name: String, from: String, to: String, description: String, isFav: Bool = false, imageName: String = "", coord: Coordinates = .init(latitude: 0.0, longitude: 0.0)) {
        self.id = id
        self.name = name
        self.park = from
        self.state = to
        self.description = description
        self.isFavorite = isFav
        self.imageName = imageName
        self.coordinates = coord
    }

    private var imageName: String
    var image: Image {
        Image(imageName)
    }

    private var coordinates: Coordinates
    var locationCoordinate: CLLocationCoordinate2D {
        CLLocationCoordinate2D(
            latitude: coordinates.latitude,
            longitude: coordinates.longitude)
    }

    struct Coordinates: Hashable, Codable {
        var latitude: Double
        var longitude: Double
    }
}
