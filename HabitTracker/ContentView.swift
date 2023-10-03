//
//  ContentView.swift
//  HabitTracker
//
//  Created by Ray Nahimi on 27/09/2023.
//

import SwiftUI

struct ContentView: View {
    @StateObject var hobbies = Hobby()
    @State var showingAddHobby = false
    
    
    var body: some View {
        NavigationView {
            ScrollView{
                
            }
            .toolbar{
                Button{
                    showingAddHobby = true
                } label: {
                    Image(systemName: "plus")
                }
                .sheet(isPresented: $showingAddHobby){
                    Add()
                }
            }
            
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
