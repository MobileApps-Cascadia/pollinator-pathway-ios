//
//  MapLocation.swift
//  PollinatorPathway
//
//  Created by Student Account on 12/5/22.
//

import Foundation
import MapKit

struct Location: Identifiable, Codable, Equatable {
    let id: UUID
    var name: String
    var business: String
    var boxes: Int
    let latitude: Double
    let longitude: Double
}
