//
//  Add.swift
//  HabitTracker
//
//  Created by Ray Nahimi on 03/10/2023.
//

import SwiftUI

struct Add: View {
    @ObservedObject var hobbies = Hobby()
    @Environment(\.dismiss) var dismiss
    
    @State private var name = ""
    @State private var type = "Study"
    @State private var timeSpent = 0.0
    let types = ["Study","Sports"]
    
    var body: some View {
        NavigationView{
            
            Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
        }
    }
}

struct Add_Previews: PreviewProvider {
    static var previews: some View {
        Add(hobbies: Hobby())
    }
}
