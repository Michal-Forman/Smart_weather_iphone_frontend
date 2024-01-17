//
//  WeatherService.swift
//  Smart Weather Iphone
//
//  Created by Michal Forman on 09.01.2024.
//

import Foundation

class WeatherService {
    func getWeatherValues(latitude: Double, longitude: Double) async throws -> WeatherValues {
        let endpoint = "https://main-api-0xrx.onrender.com/api/smart-weather/production/\(latitude),\(longitude)"
        
        guard let url = URL(string: endpoint) else {throw FetchError.invalidUrl}
        
        let (data, response) = try await URLSession.shared.data(from: url)
        
        guard let response = response as?HTTPURLResponse, response.statusCode == 200 else {
            throw FetchError.invalidResponse
        }
        
        do {
            print(data)
            let decoder = JSONDecoder()
            return try decoder.decode(WeatherValues.self, from: data)
        } catch {
            throw FetchError.invalidData
        }
    }
}

// Usage
let weatherService = WeatherService()

