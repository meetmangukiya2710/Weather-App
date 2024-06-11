//
//  ModelFile.swift
//  Weather App
//
//  Created by R95 on 06/06/24.
//

import Foundation

struct WeatherModel: Decodable {
    let data: DataClass?
    let location: Location?
}

// MARK: - DataClass
struct DataClass: Decodable {
    let time: String?
    let values: Values?
}

struct Values: Decodable {
    let cloudBase: Double?
    let cloudCeiling: Double?
    let cloudCover: Int?
    let dewPoint: Double?
    let freezingRainIntensity: Int?
    let humidity: Int?
    let precipitationProbability: Int?
    let pressureSurfaceLevel: Double?
    let rainIntensity: Int?
    let sleetIntensity: Int?
    let snowIntensity: Int?
    let temperature: Double?
    let temperatureApparent: Double?
    let uvHealthConcern: Int?
    let uvIndex: Int?
    let visibility: Double?
    let weatherCode: Int?
    let windDirection: Double?
    let windGust: Double?
    let windSpeed: Double?
}

// MARK: - Location
struct Location: Decodable {
    let lat, lon: Double?
    let name, type: String?
}
