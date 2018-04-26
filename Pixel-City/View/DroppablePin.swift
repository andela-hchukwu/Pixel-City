//
//  DroppablePin.swift
//  Pixel-City
//
//  Created by Henry Chukwu on 4/26/18.
//  Copyright © 2018 Henry Chukwu. All rights reserved.
//

import UIKit
import MapKit

class DroppablePin: NSObject, MKAnnotation {
    dynamic var coordinate: CLLocationCoordinate2D
    var identifier: String

    init(coordinate: CLLocationCoordinate2D, identifier: String) {
        self.coordinate = coordinate
        self.identifier = identifier
        super.init()
    }


}
