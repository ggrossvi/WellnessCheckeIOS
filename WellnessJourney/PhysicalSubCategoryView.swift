//
//  PhysicalSubCategoryView.swift
//  WellnessJourney
//
//  Created by Gloria Villa on 11/14/24.
//

import SwiftUI

struct PhysicalSubCategoryView: View {
    @State private var sleepRating: Int = 0  // Add state for binding
    @State private var activityRating: Int = 0  // Add state for binding
    @State private var eatingRating: Int = 0  // Add state for binding
    @State private var showReflection = false
    
    var body: some View {
        
        VStack{
            Label("Physical",systemImage: "")
                .frame(width:250, height:40)
                .background(Color(UIColor(red: 0.5, green: 0, blue: 1, alpha: 1)))
                .foregroundColor(Color.white)
                .cornerRadius(10)
                .controlSize(.large)
                .padding(35.0)
            HStack{
                
                Label("Sleep",systemImage: "")
                    .frame(width:150, height:40, alignment: .leading)
                    .foregroundColor(.black)
                    .cornerRadius(10)
                    .controlSize(.large)
                    .padding(12.0)
                RatingView(rating: $sleepRating)
            }
            HStack {
                Label("Activity Level",systemImage: "")
                    .frame(width:150, height:40, alignment: .leading)
                    .foregroundColor(.black)
                    .cornerRadius(10)
                    .controlSize(.large)
                    .padding(10.0)
                RatingView(rating: $activityRating)
            }
            HStack{
                
                Label("Healthy Eating",systemImage: "")
                    .frame(width:150, height:40, alignment: .leading)
                    .foregroundColor(.black)
                    .cornerRadius(10)
                    .controlSize(.large)
                    .padding(10.0)
                RatingView(rating: $eatingRating)
                
            }
            
            // ????? How do I make the submit a little higher and the button border looks a little funny
            .padding(10)
            
            Button("Submit") {
                showReflection = true
            }
            //.padding()
            .frame(width:100, height:40)
            .background(.clear) // Make button transparent
            .border(Color.purple, width: 4)
            //.background(Color(UIColor(red: 0.5, green: 0, blue: 1, alpha: 1)))
            .foregroundColor(.purple)
            .cornerRadius(10)
            .controlSize(.large)
            .padding(10)
            Spacer()
        }.navigationDestination(isPresented: $showReflection) {
            ReflectionTextAreaView()
        }
        
    }
}

struct PhysicalSubCategoryView_Previews: PreviewProvider {
    static var previews: some View {
        PhysicalSubCategoryView()
    }
}
