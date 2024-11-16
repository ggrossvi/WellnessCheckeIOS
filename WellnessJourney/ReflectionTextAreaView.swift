//
//  ReflectionTextAreaView.swift
//  WellnessJourney
//
//  Created by Gloria Villa on 11/14/24.
//

import SwiftUI

struct ReflectionTextAreaView: View {
    @State private var textFieldText: String = "" // State variable to store text
    @State var dataArray: [String] = []
    
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
            Text("How did you feel today?").bold()
                
            TextField("Enter your text here", text: $textFieldText)
                .padding()
                .background(Color.purple.opacity(0.2).cornerRadius(10))
                .foregroundColor(.purple)
                .multilineTextAlignment(.leading) // Allows multiple lines
                .frame(height: 100) // Adjust height as needed
                    //.font(.headline)
            
            Button(action: {
                saveText()
            }, label: {
                Text("Save".uppercased())
//                    .padding()
//                    .frame(maxWidth: .infinity)
//                    .background(Color.blue.cornerRadius(10))
//                    .foregroundColor(.white)
//                    .font(.headline)
                .padding()
                .frame(width:100, height:40)
                .background(.clear) // Make button transparent
                
                // ????? The border on this looks wonky
                .border(Color.purple, width: 4)
                    //.background(Color(UIColor(red: 0.5, green: 0, blue: 1, alpha: 1)))
                .foregroundColor(.purple)
                .cornerRadius(10)
                .controlSize(.large)
                .padding(10)
            })
            
            ForEach(dataArray, id: \.self) { data in
                Text(data)
            }
            
            Spacer()
        }
        .padding()
        // ?????? Not sure why this isn't showing up I don't need it but not sure why it is not showing up
        .navigationTitle("Physical Checkin")
        
    }
    
    func saveText() {
        dataArray.append(textFieldText)
    }
}

struct ReflectionTextAreaView_Previews: PreviewProvider {
    static var previews: some View {
        ReflectionTextAreaView()
    }
}
