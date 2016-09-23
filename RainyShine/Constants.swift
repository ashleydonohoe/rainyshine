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

//let CURRENT_WEATHER_URL = "\(BASE_URL)\(LATITUDE)34.383331\(LONGITUDE)131.199997\(APP_ID)\(API_KEY)"

// API seems to not locate any coordinates right now, so hard coding values in working URL
let CURRENT_WEATHER_URL = "http://api.openweathermap.org/data/2.5/weather?lat=\(Location.sharedInstance.latitude!)&lon=\(Location.sharedInstance.longitude!)&appid=42a1771a0b787bf12e734ada0cfc80cb"
let FORECAST_URL = "http://api.openweathermap.org/data/2.5/forecast/daily?lat=\(Location.sharedInstance.latitude!)&lon=\(Location.sharedInstance.longitude!)&cnt=10&mode=json&appid=42a1771a0b787bf12e734ada0cfc80cb"


