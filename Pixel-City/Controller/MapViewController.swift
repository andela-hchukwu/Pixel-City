//
//  MapViewController.swift
//  Pixel-City
//
//  Created by Henry Chukwu on 4/25/18.
//  Copyright © 2018 Henry Chukwu. All rights reserved.
//

import UIKit
import MapKit

class MapViewController: UIViewController {

    // IBOutlets
    @IBOutlet weak var mapView: MKMapView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        mapView.delegate = self
    }

    // IBActions
    
    @IBAction func centerMapBtnWasPressed(_ sender: Any) {
    }
}

extension MapViewController: MKMapViewDelegate {

}

