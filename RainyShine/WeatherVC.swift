//
//  WeatherVC.swift
//  RainyShine
//
//  Created by Ashley Donohoe on 9/19/16.
//  Copyright © 2016 Ashley Donohoe. All rights reserved.
//

import UIKit


class WeatherVC: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    let weatherClient = CurrentWeather()
    
    @IBOutlet weak var dateLabel: UILabel!
    @IBOutlet weak var currentTempLabel: UILabel!
    @IBOutlet weak var weatherImage: UIImageView!
    @IBOutlet weak var weatherConditionLabel: UILabel!
    @IBOutlet weak var locationLabel: UILabel!
    @IBOutlet weak var tableView: UITableView!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        tableView.delegate = self
        tableView.dataSource = self
        print(CURRENT_WEATHER_URL)
        weatherClient.downloadWeatherDetails {
            self.updateMainUI()
        }
    }

    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 6
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "WeatherCell", for: indexPath)
        return cell
    }
    
    func updateMainUI() {
        dateLabel.text = weatherClient.date
        currentTempLabel.text = "\(weatherClient.currentTemp)"
        weatherConditionLabel.text = weatherClient.weatherType
        locationLabel.text = weatherClient.cityName
        weatherImage.image = UIImage(named: weatherClient.weatherType)
    }
}

