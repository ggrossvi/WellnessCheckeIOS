//
//  MoodView.swift
//  WellnessJourney
//
//  Created by Gloria Villa on 11/15/24.
//

import SwiftUI

struct MoodView: View {
    enum Emoji: String, CaseIterable {
        // control command space
        case beaming = "\u{1F601}"
        case smiling = "\u{1F642}"
        case unamused = "\u{1F612}"
        case angry = "\u{1F620}"
        case frown = "\u{2639}"
        case sad = "\u{1F625}"
        case crying = "\u{1F62D}"
        case fear = "\u{1F627}"
    }
    
    @State private var selection: Emoji = .beaming
    
    var body: some View {
        
        NavigationView {
            VStack{
                Label("Your Emojion",systemImage: "")
                    .frame(width:250, height:40)
                    .background(Color(UIColor(red: 0.5, green: 0, blue: 1, alpha: 1)))
                    .foregroundColor(.white)
                    .cornerRadius(10)
                    .controlSize(.large)
                    .padding(35.0)
                Text("Choose the emoji that best \n represents your day").bold()
                    .multilineTextAlignment(.center)
                    .padding(10)
                Text(selection.rawValue)
                    .font(.system(size: 150))
                Picker("Select Emoji", selection: $selection) {
                    ForEach(Emoji.allCases, id: \.self)
                        {
                            emoji in
                            Text(emoji.rawValue)
                        }
                        
                    }
                    .pickerStyle(.segmented)
                Spacer()
                }
                
                //.navigationTitle("Your Emojion!")
                //Spacer()
            
        }
    }
}

struct MoodView_Previews: PreviewProvider {
    static var previews: some View {
        MoodView()
    }
}
