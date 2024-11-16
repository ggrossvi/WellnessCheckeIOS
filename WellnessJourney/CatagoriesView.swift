//
//  CatagoriesView.swift
//  WellnessJourney
//
//  Created by Gloria Villa on 11/14/24.
//

import SwiftUI

struct CatagoriesView: View {
    var body: some View {
        VStack{
            Text("What category would \n you like to track?")
                .padding(40)
                .bold()
//                .background(.red)
            
                
            Button("Physical") {
                /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Action@*/ /*@END_MENU_TOKEN@*/
            }
            .padding()
            .frame(width:210, height:40)
            .background(Color(UIColor(red: 0.5, green: 0, blue: 1, alpha: 1))) //purple
            
            .foregroundColor(.white)
            .cornerRadius(10)
            .controlSize(.large)
            .padding(10.0)
            
            // teal
            Button("Emotional") {
                /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Action@*/ /*@END_MENU_TOKEN@*/
            }
            .padding()
            .frame(width:210, height:40)
            .background(Color(UIColor(red: 0.0, green: 0.8, blue: 0.8, alpha: 1))) //purple
            .foregroundColor(.white)
            .cornerRadius(10)
            .controlSize(.large)
            .padding(10)
            
            // green
            Button("Financial") {
                /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Action@*/ /*@END_MENU_TOKEN@*/
            }
            .padding()
            .frame(width:210, height:40)
            .background(Color(UIColor(red: 0.2, green: 0.5, blue: 0.2, alpha: 1))) //purple
            .foregroundColor(.white)
            .cornerRadius(10)
            .controlSize(.large)
            .padding(10)
            
            // orange
            Button("Social") {
                /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Action@*/ /*@END_MENU_TOKEN@*/
            }
            .padding()
            .frame(width:210, height:40)
            .background(Color(UIColor(red: 1.0, green: 0.5, blue: 0, alpha: 1))) //purple
            .foregroundColor(.white)
            .cornerRadius(10)
            .controlSize(.large)
            .padding(10)
            
            // blue
            Button("Career") {
                /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Action@*/ /*@END_MENU_TOKEN@*/
            }
            .padding()
            .frame(width:210, height:40)
            .background(Color(UIColor(red: 0.0, green: 0.4, blue: 1, alpha: 1))) //purple
            .foregroundColor(.white)
            .cornerRadius(10)
            .controlSize(.large)
            .padding(10)
            
        }
        
    }
}

struct CatagoriesView_Previews: PreviewProvider {
    static var previews: some View {
        CatagoriesView()
    }
}
