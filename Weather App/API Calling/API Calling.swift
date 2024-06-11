//
//  API Calling.swift
//  Weather App
//
//  Created by R95 on 06/06/24.
//

import Foundation

class ApiCalling {
    func apiCalling(location: String,_ load: @escaping(_ value: WeatherModel) -> Void) {
        
        let link = URL(string: "https://api.tomorrow.io/v4/weather/realtime?location=\(location)&apikey=tBh3o4PyAtl0TIPovJfo92vISjV14JUu")
        var url =  URLRequest(url: link!)
        url.httpMethod = "GET"
        
        URLSession.shared.dataTask(with: url) { data, respo, error in
            do {
                if error == nil {
                    let array = try JSONDecoder().decode(WeatherModel.self, from: data!)
                    load(array)
                }
            }
            catch {
                print(error.localizedDescription)
            }
        }.resume()
    }
}
