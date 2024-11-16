//
//  JournalView.swift
//  WellnessJourney
//
//  Created by Gloria Villa on 11/16/24.
//

import SwiftUI

struct JournalView: View {
    var body: some View {
        VStack{
            Label("Weekly Journal",systemImage: "")
                .frame(width:250, height:40)
                .background(Color(UIColor(red: 0.5, green: 0, blue: 1, alpha: 1)))
                .foregroundColor(.white)
                .cornerRadius(10)
                .controlSize(.large)
                .padding(20.0)
            Text("Week of November 10th, 2024").bold()
                .padding(20)
            HStack{
                Image("SmilingEyesOpen")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width:30,height:30)
                    .padding(10)
                
                Text("11/12/16 - Not bad, got a little hike in with Mom and talked about buying a house. We shared a charcuterie board and wine before we hiked it all off.")
            }
            HStack{
                
                Image("SmilingEyesOpen")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width:30,height:30)
                    .padding(10)
                
                Text("11/13/16 - SO excited to see my friends tomorrow. Can't wait! Played a singles tennis match and felt super focused at work today. Not sure why but I'm not upset! ")
            }
            HStack{
                
                Image("SmilingEyesOpen")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width:30,height:30)
                    .padding(10)
                
                Text("11/14/16 - SO excited to see my friends tomorrow. Can't wait! Played a singles tennis match and felt super focused at work today. Not sure why but I'm not upset! ")
            }
            
            HStack{
                
                Image("SmilingEyesOpen")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width:30,height:30)
                    .padding(10)
                
                Text("11/15/16 -  Partied a little too hard last night for Thirsty Thursday but had a great time catching up with friends. We played one too many drinking games but it was great to get together again!")
            }
            HStack{
                
                Image("Angry")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width:30,height:30)
                    .padding(10)
                
                Text("11/16/16 - Really feeling it today, was dragging at work. Joe pissed me off at work, what a condescending remark. Binged on wings and beer while venting to Chris again. Ugh, I need a new job")
            }
            HStack{
                
                Image("Crying")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width:30,height:30)
                    .padding(10)
                
                Text("11/17/16 - Time to catch up on sleep and get back on track. I had a nice walk but ran out of prepped food so ordered Wendy's on Grubhub.")
            }
            
            
        }
    }
}

struct JournalView_Previews: PreviewProvider {
    static var previews: some View {
        JournalView()
    }
}
