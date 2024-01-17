//
//  WeatherViewModel.swift
//  Smart Weather Iphone
//
//  Created by Michal Forman on 09.01.2024.
//

import Foundation
struct WeatherViewModel {
    func getDoubleDescription(_ value: Double?) -> String {
        guard let value = value else { return "..."}
        
        switch value {
        case 0..<0.5:
            return "No"
        case 0.5...1:
            return "Yes"
        default:
            return "Out of range error"
        }
    }
    
    func getOutfitDescription(_ value: Double?) -> String {
        guard let value = value else { return "..." }

        switch value {
        case 0..<0.2:
            return "Cold winter"
        case 0.2..<0.4:
            return "Winter"
        case 0.4..<0.6:
            return "Fall"
        case 0.6..<0.8:
            return "Spring"
        case 0.8...1:
            return "Summer"
        default:
            return "Out of range error"
        }
    }
}
