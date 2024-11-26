//
//  ContentView.swift
//  WellnessJourney
//
//  Created by Gloria Villa on 11/13/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationStack{
            VStack() {
                Image("Welcome_to_Wellness_2")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                
                //.imageScale(.large)
                //.foregroundColor(.blue)
                //.background(Color("DFEAFE72"))
                //Text("Hello, world!")
            }
            //.background(Color(UIColor(red: 0.5, green: 0, blue: 1, alpha: 1))).edgesIgnoringSafeArea(.all)
            //.padding(0.0)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
