//
//  Constants.swift
//  Pixel-City
//
//  Created by Henry Chukwu on 5/2/18.
//  Copyright © 2018 Henry Chukwu. All rights reserved.
//

import Foundation

let apiKey = "903fb47b981b71bcaa600362da5fe8a2"

func flickrUrl(forApiKey key: String, withAnnotation annotation: DroppablePin, andNumberOfPhotos number: Int) -> String {
    return "https://api.flickr.com/services/rest/?method=flickr.photos.search&api_key=\(apiKey)&lat=\(annotation.coordinate.latitude)&lon=\(annotation.coordinate.longitude)&radius=1&radius_units=mi&per_page=\(number)&format=json&nojsoncallback=1"

}
//https://api.flickr.com/services/rest/?method=flickr.photos.search&api_key=901b14bd542cab2698c508dbaa46dfc9&lat=42.8&lon=122.3&radius=1&radius_units=mi&per_page=40&format=json&nojsoncallback=1

