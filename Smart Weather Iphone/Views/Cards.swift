//
//  Cards.swift
//  Smart Weather Iphone
//
//  Created by Michal Forman on 12.01.2024.
//

import SwiftUI

struct Cards: View {
    
    private let weatherService = WeatherService()
    private let weatherViewModel = WeatherViewModel()
    
    @State private var weatherValues: WeatherValues?
    
    var body: some View {
        VStack {
            Card(text: "Umbrella", icon: "umbrella.fill", answer: weatherViewModel.getDoubleDescription(weatherValues?.umbrellaNeed), value: weatherValues?.umbrellaNeed ?? 0)
            Card(text: "Sunscreen", icon: "sun.max.trianglebadge.exclamationmark.fill", answer: weatherViewModel.getDoubleDescription(weatherValues?.sunscreenNeed), value: weatherValues?.sunscreenNeed ?? 0)
            Card(text: "Activities", icon: "figure.hiking", answer: weatherViewModel.getDoubleDescription(weatherValues?.outdoorActivities), value: weatherValues?.outdoorActivities ?? 0)
            OutfitCard(answer: weatherViewModel.getOutfitDescription(weatherValues?.outfit), value: weatherValues?.outfit ?? 0)
            
        }
        .onAppear {
                        locationManager.onLocationUpdate = { location in
                            Task {
                                do {
                                                // Update the state variable with the fetched weather values
                                                self.weatherValues = try await weatherService.getWeatherValues(latitude: location.coordinate.latitude, longitude: location.coordinate.longitude)
                                            } catch {
                                                // Handle errors
                                            }
                            }
                        }

                        locationManager.start()
                    }
    }
}

#Preview {
    Cards()
}
