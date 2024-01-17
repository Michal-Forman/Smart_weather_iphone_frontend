//
//  WeatherValues.swift
//  Smart Weather Iphone
//
//  Created by Michal Forman on 09.01.2024.
//

import Foundation

struct WeatherValues: Codable {
    let umbrellaNeed: Double
    let sunscreenNeed: Double
    let outdoorActivities: Double
    let outfit: Double
}

enum FetchError: Error {
    case invalidUrl
    case invalidResponse
    case invalidData
}
