//
//  Extensions.swift
//  SmartHomeThermostat
//
//  Created by Ali Mert Özhayta on 1.05.2022.
//

import SwiftUI

extension LinearGradient {
    
    init(_ colors: [Color], startPoint: UnitPoint = .topLeading, endPoint: UnitPoint = .bottomTrailing) {
        self.init(gradient: Gradient(colors: colors), startPoint: startPoint, endPoint: endPoint)
    }
}
