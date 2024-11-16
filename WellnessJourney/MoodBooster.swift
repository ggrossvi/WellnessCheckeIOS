//
//  MoodBooster.swift
//  WellnessJourney
//
//  Created by Gloria Villa on 11/16/24.
//

import SwiftUI

struct MoodBooster: View {
    var body: some View {
        VStack{
            Label("Mood Boosters",systemImage: "")
                .frame(width:250, height:40)
                .background(Color(UIColor(red: 0.5, green: 0, blue: 1, alpha: 1)))
                .foregroundColor(.white)
                .cornerRadius(10)
                .controlSize(.large)
                .padding(35.0)
            Text("Try these mood boosters \n to improve your day").bold()
                .multilineTextAlignment(.center)
                .padding(10)
            
            Text("Meditation").bold()
                .multilineTextAlignment(.center)
                .padding(10)
            
            Text("Journaling").bold()
                .multilineTextAlignment(.center)
                .padding(10)
            
            Text("Self Massage").bold()
                .multilineTextAlignment(.center)
                .padding(10)
            
            Text("Breathing Exercises").bold()
                .multilineTextAlignment(.center)
                .padding(10)
            Spacer()
        }
        
    }
    
}

struct MoodBooster_Previews: PreviewProvider {
    static var previews: some View {
        MoodBooster()
    }
}
