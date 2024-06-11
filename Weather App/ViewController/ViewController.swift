//
//  ViewController.swift
//  Weather App
//
//  Created by R95 on 06/06/24.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var locationOutlet: UILabel!
    @IBOutlet weak var celsiusLableOutlet: UILabel!
    @IBOutlet weak var searchTextFieldOutlet: UISearchBar!
    @IBOutlet weak var airTypeLableOutlet: UILabel!
    @IBOutlet weak var windSpeedLableOutlet: UILabel!
    @IBOutlet weak var tempLableOutlet: UILabel!
    @IBOutlet weak var fellsLakeLableOutlet: UILabel!
    @IBOutlet weak var humidityLableOutlet: UILabel!
    @IBOutlet weak var pressureLableOutlet: UILabel!
    @IBOutlet weak var visiblityLableOutlet: UILabel!
    
    var searchText = ""
    var apicallingObjct: ApiViewModelClass = ApiViewModelClass()
    var array: WeatherModel?
    let activityView = UIActivityIndicatorView(style: .gray)
    
    override func viewDidLoad() {
        super.viewDidLoad()
        apicallingObjct.apiViewModelFunc(location: "Surat") { [self] value in
            array = value
            activityView.hidesWhenStopped = true
            activityView.stopAnimating()
            
            if let cloudPercentage = array?.data?.values?.temperature {
                celsiusLableOutlet.text = "\(cloudPercentage) ℃"
            } else {
                celsiusLableOutlet.text = "N/A"
            }
            
            if let airType = array?.data?.time {
                airTypeLableOutlet.text = "\(airType)"
            } else {
                airTypeLableOutlet.text = "N/A"
            }
            
            if let windSpeed = array?.data?.values?.windSpeed {
                windSpeedLableOutlet.text = "\(windSpeed) km/h"
            } else {
                windSpeedLableOutlet.text = "N/A"
            }
            
            if let temp = array?.data?.values?.temperature {
                tempLableOutlet.text = "\(temp)"
            } else {
                tempLableOutlet.text = "N/A"
            }
            
            if let fellsLike = array?.data?.values?.freezingRainIntensity {
                fellsLakeLableOutlet.text = "\(fellsLike)"
            } else {
                fellsLakeLableOutlet.text = "N/A"
            }
            
            if let humidity = array?.data?.values?.humidity {
                humidityLableOutlet.text = "\(humidity)"
            } else {
                humidityLableOutlet.text = "N/A"
            }
            
            if let pressure = array?.data?.values?.pressureSurfaceLevel {
                pressureLableOutlet.text = "\(pressure)"
            } else {
                pressureLableOutlet.text = "N/A"
            }
            
            if let visiblity = array?.data?.values?.visibility {
                visiblityLableOutlet.text = "\(visiblity)"
            } else {
                visiblityLableOutlet.text = "N/A"
            }
        }
        
        showActivityIndicatory()
    }
    
    @IBAction func refreshButtonAction(_ sender: Any) {
        searchText = "Surat"
        showActivityIndicatory()
        activityView.startAnimating()
        
        apicallingObjct.apiViewModelFunc(location: searchText) { [self] value in
            array = value
            activityView.hidesWhenStopped = true
            activityView.stopAnimating()
            locationOutlet.text = searchText
            
            if let cloudPercentage = array?.data?.values?.temperature {
                celsiusLableOutlet.text = "\(cloudPercentage) ℃"
            } else {
                celsiusLableOutlet.text = "N/A"
            }
            
            if let airType = array?.data?.time {
                airTypeLableOutlet.text = "\(airType)"
            } else {
                airTypeLableOutlet.text = "N/A"
            }
            
            if let windSpeed = array?.data?.values?.windSpeed {
                windSpeedLableOutlet.text = "\(windSpeed) km/h"
            } else {
                windSpeedLableOutlet.text = "N/A"
            }
            
            if let temp = array?.data?.values?.temperature {
                tempLableOutlet.text = "\(temp)"
            } else {
                tempLableOutlet.text = "N/A"
            }
            
            if let fellsLike = array?.data?.values?.freezingRainIntensity {
                fellsLakeLableOutlet.text = "\(fellsLike)"
            } else {
                fellsLakeLableOutlet.text = "N/A"
            }
            
            if let humidity = array?.data?.values?.humidity {
                humidityLableOutlet.text = "\(humidity)"
            } else {
                humidityLableOutlet.text = "N/A"
            }
            
            if let pressure = array?.data?.values?.pressureSurfaceLevel {
                pressureLableOutlet.text = "\(pressure)"
            } else {
                pressureLableOutlet.text = "N/A"
            }
            
            if let visiblity = array?.data?.values?.visibility {
                visiblityLableOutlet.text = "\(visiblity)"
            } else {
                visiblityLableOutlet.text = "N/A"
            }
        }
        
    }
    
    func showActivityIndicatory() {
        activityView.center = self.view.center
        self.view.addSubview(activityView)
        activityView.startAnimating()
    }
    
    @IBAction func searchButtonAction(_ sender: Any) {
        showActivityIndicatory()
        activityView.startAnimating()
        apicallingObjct.apiViewModelFunc(location: searchTextFieldOutlet.text!) { [self] value in
            array = value
            activityView.hidesWhenStopped = true
            activityView.stopAnimating()
            searchText = searchTextFieldOutlet.text ?? "Surat"
            locationOutlet.text = searchText
            
            if let cloudPercentage = array?.data?.values?.temperature {
                celsiusLableOutlet.text = "\(cloudPercentage) ℃"
            } else {
                celsiusLableOutlet.text = "N/A"
            }
            
            if let airType = array?.data?.time {
                airTypeLableOutlet.text = "\(airType)"
            } else {
                airTypeLableOutlet.text = "N/A"
            }
            
            if let windSpeed = array?.data?.values?.windSpeed {
                windSpeedLableOutlet.text = "\(windSpeed) km/h"
            } else {
                windSpeedLableOutlet.text = "N/A"
            }
            
            if let temp = array?.data?.values?.temperature {
                tempLableOutlet.text = "\(temp)"
            } else {
                tempLableOutlet.text = "N/A"
            }
            
            if let fellsLike = array?.data?.values?.freezingRainIntensity {
                fellsLakeLableOutlet.text = "\(fellsLike)"
            } else {
                fellsLakeLableOutlet.text = "N/A"
            }
            
            if let humidity = array?.data?.values?.humidity {
                humidityLableOutlet.text = "\(humidity)"
            } else {
                humidityLableOutlet.text = "N/A"
            }
            
            if let pressure = array?.data?.values?.pressureSurfaceLevel {
                pressureLableOutlet.text = "\(pressure)"
            } else {
                pressureLableOutlet.text = "N/A"
            }
            
            if let visiblity = array?.data?.values?.visibility {
                visiblityLableOutlet.text = "\(visiblity)"
            } else {
                visiblityLableOutlet.text = "N/A"
            }
        }
    }
}
