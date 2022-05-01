//
//  ContentView.swift
//  SmartHomeThermostat
//
//  Created by Ali Mert Özhayta on 1.05.2022.
//

import SwiftUI

struct ContentView: View {
    
    init() {
        UINavigationBar.appearance().titleTextAttributes = [.foregroundColor: UIColor.white]
    }
    
    var body: some View {
        NavigationView {
            ZStack {
                Color("Background")
                    .ignoresSafeArea()
                
                ScrollView {
                    VStack(spacing: 0) {
                        // MARK: Thermometer
                        ThermometerView()
                            .padding(.top, 30)
                            .padding(.bottom, 60)
                        // MARK: Smart Systems
                        
                        HStack(spacing: 20) {
                            // MARK: Humidity Card
                            ClimateCard(
                                iconName: "humidity.fill",
                                index: "Inside Humidity",
                                measure: "%49"
                            )
                            
                            // MARK: Temperature Card
                            ClimateCard(
                                iconName: "thermometer",
                                index: "Outside Temp.",
                                measure: "-10°"
                            )
                        }
                    }
                }
            }
            .navigationBarTitleDisplayMode(.inline)
            .navigationTitle("Thermostat")
            
        }
        .navigationViewStyle(.stack)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
