//
//  Items.swift
//  HabitTracker
//
//  Created by Ray Nahimi on 27/09/2023.
//

import Foundation


struct HobbyItem: Identifiable, Codable {
    var id = UUID()
    let name: String
    let type : String
    let timeSpent : Double
    
}
