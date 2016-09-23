//
//  Location.swift
//  RainyShine
//
//  Created by Gabriele on 9/22/16.
//  Copyright © 2016 Ashley Donohoe. All rights reserved.
//

import Foundation
import CoreLocation

class Location {
    static var sharedInstance = Location()
    private init() {}
    
    var latitude: Double!
    var longitude: Double!
}
