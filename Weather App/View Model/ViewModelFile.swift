//
//  ViewModelFile.swift
//  Weather App
//
//  Created by R95 on 06/06/24.
//

import Foundation

class ApiViewModelClass : NSObject {
    
    func apiViewModelFunc(location: String,_ load: @escaping(_ value: WeatherModel) -> Void) {
        var apiObject: ApiCalling = ApiCalling()
        
        apiObject.apiCalling(location: location) {value in
            load(value)
        }
    }
    
}
