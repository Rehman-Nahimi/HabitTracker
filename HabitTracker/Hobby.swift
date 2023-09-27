//
//  Hobby.swift
//  HabitTracker
//
//  Created by Ray Nahimi on 27/09/2023.
//

import Foundation


class Hobby: ObservableObject {
    @Published var items = [HobbyItem](){
        didSet {
            let encoder = JSONEncoder()
            
            if let encoded = try? encoder.encode(items) {
                UserDefaults.standard.set(encoded, forKey: "Items")
            }
        }
    }
    init () {
        if let savedItems = UserDefaults.standard.data(forKey: "Items") {
            if let decodedItems = try? JSONDecoder().decode([HobbyItem].self, from: savedItems){
                items = decodedItems
                return
            }
        }
        items = []
    }
}
