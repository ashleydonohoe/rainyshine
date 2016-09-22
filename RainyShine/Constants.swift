//
//  Constants.swift
//  RainyShine
//
//  Created by Ashley Donohoe on 9/21/16.
//  Copyright © 2016 Ashley Donohoe. All rights reserved.
//

import Foundation

let BASE_URL = "http://api.openweathermap.org/data/2.5/weather?"
let LATITUDE = "lat="
let LONGITUDE = "&lon="
let APP_ID = "&appid="
let API_KEY = "327d6da12d644fdfcabcfa843950f0ee"

typealias DownoadComplete = () -> ()

let CURRENT_WEATHER_URL = "\(BASE_URL)\(LATITUDE)-35\(LONGITUDE)123\(APP_ID)\(API_KEY)"

