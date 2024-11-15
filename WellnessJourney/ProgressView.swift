//
//  ProgressView.swift
//  WellnessJourney
//
//  Created by Gloria Villa on 11/15/24.
//

import SwiftUI

struct ProgressView: View {
    var body: some View {
        VStack{
            Label("Weekly Progress",systemImage: "")
                .frame(width:250, height:40)
                .background(Color(UIColor(red: 0.5, green: 0, blue: 1, alpha: 1)))
                .foregroundColor(.white)
                .cornerRadius(10)
                .controlSize(.large)
                .padding(35.0)
            Image("barchart-purple")
                //.frame(width: 150.0, height:100)
        }
    }
}

struct ProgressView_Previews: PreviewProvider {
    static var previews: some View {
        ProgressView()
    }
}
