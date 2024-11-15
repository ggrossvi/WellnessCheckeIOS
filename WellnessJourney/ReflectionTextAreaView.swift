//
//  ReflectionTextAreaView.swift
//  WellnessJourney
//
//  Created by Gloria Villa on 11/14/24.
//

import SwiftUI

struct ReflectionTextAreaView: View {
    var body: some View {
        VStack {
            Label("Check-in",systemImage: "")
                .frame(width:250, height:40)
                .background(Color(UIColor(red: 0.5, green: 0, blue: 1, alpha: 1)))
                .foregroundColor(.white)
                .cornerRadius(10)
                .controlSize(.large)
                .padding(35.0)
            
            // pull in text area
        }
    }
}

struct ReflectionTextAreaView_Previews: PreviewProvider {
    static var previews: some View {
        ReflectionTextAreaView()
    }
}
