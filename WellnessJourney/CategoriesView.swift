//
//  CatagoriesView.swift
//  WellnessJourney
//
//  Created by Gloria Villa on 11/14/24.
//

import SwiftUI

// think data
//categoryitem/category item view/
//activity view (file name), activity item view,  model: activity item
//checkin view
//logs

//when i submit it should have all my entries in one page
//add stars to the journal page

struct WellnessCategory: Identifiable {
    let id = UUID()
    let category:String
    let color:Color
    let destination: AnyView
    // let activities: []
    
    
}

//struct Journal:
//id
//text entry
// emoji
//activities and stars
//date

// create to separate file in models(folder) and put all model structs there.

//To do: refactor what I have on screen
// separate model for wellness category and put in new folder

// do activities view, generic activities list recieve , make activities model, reusable view for activities to use for all categories.  put model in different , need initializer for view should recieve activities 

//struct Color: Identifiable {
//    let id = UUID()
//    let name:String
//    //let color: UIColor
//}



struct CategoriesView: View {
    @State var showPhysical = false
    //should I create a color class
//    let myPurpleColor = UIColor(red: 0.5, green: 0, blue: 1, alpha: 1)
//    let myTealColor = UIColor(red: 0.0, green: 0.8, blue: 0.8, alpha: 1)
//    let myGreenColor = UIColor(red: 0.2, green: 0.5, blue: 0.2, alpha: 1)
//    let myOrangeColor = UIColor(red: 1.0, green: 0.5, blue: 0, alpha: 1)
//    let myBlueColor = UIColor(red: 0.0, green: 0.4, blue: 1, alpha: 1)
                             
    let wellnessCategories: [WellnessCategory] = [
        WellnessCategory(category: "Physical" ,color: Color.purple, destination: AnyView(PhysicalSubCategoryView())), //purple
        //WellnessCategory(category: "Emotional", color: Color.teal, destination: AnyView(EmotionalSubCategoryView())),
//        WellnessCategory(category: "Financial", color: Color.green),
//        WellnessCategory(category: "Career", color: Color.orange)
    ]
    
    
    
    func setBackgroundColor(color: UIColor) {
        //code
    }
    
    // setBackgroundColor(color:)
    var body: some View {
        NavigationStack{
            VStack{
                Text("What category would \n you like to track?")
                    .padding(40)
                    .bold()
                //                .background(.red)
                
                List(wellnessCategories) {item in
                    NavigationLink(destination: item.destination) {
                        Text(item.category)
                            .padding()
                            .frame(maxWidth: .infinity)
                            .cornerRadius(10) // what is this
                        //.listRowInsets(EdgeInsets())
                            .listRowSeparator(.hidden)
                            .background(item.color)
                            .foregroundColor(.white)
                    }
                    
                }
                .scrollContentBackground(.hidden)
                //Spacer()
//                Button("Physical") {
//                    showPhysical = true
//                }
//                .padding()
//                .frame(width:210, height:40)
//                .background(item.color))) //purple
//
//                .foregroundColor(.white)
//                .cornerRadius(10)
//                .controlSize(.large)
//                .padding(10.0)
                
//                // teal
//                Button("Emotional") {
//                    /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Action@*/ /*@END_MENU_TOKEN@*/
//                }
//                .padding()
//                .frame(width:210, height:40)
//                .background(Color(UIColor(red: 0.0, green: 0.8, blue: 0.8, alpha: 1))) //teal
//                .foregroundColor(.white)
//                .cornerRadius(10)
//                .controlSize(.large)
//                .padding(10)
                
                // green
//                Button("Financial") {
//                    /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Action@*/ /*@END_MENU_TOKEN@*/
//                }
//                .padding()
//                .frame(width:210, height:40)
//                .background(Color(UIColor(red: 0.2, green: 0.5, blue: 0.2, alpha: 1)))
//                .foregroundColor(.white)
//                .cornerRadius(10)
//                .controlSize(.large)
//                .padding(10)
                
                // orange
//                Button("Social") {
//                    /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Action@*/ /*@END_MENU_TOKEN@*/
//                }
//                .padding()
//                .frame(width:210, height:40)
//                .background(Color(UIColor(red: 1.0, green: 0.5, blue: 0, alpha: 1))) //purple
//                .foregroundColor(.white)
//                .cornerRadius(10)
//                .controlSize(.large)
//                .padding(10)
                
                // blue
//                Button("Career") {
//                    /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Action@*/ /*@END_MENU_TOKEN@*/
//                }
//                .padding()
//                .frame(width:210, height:40)
//                .background(Color(UIColor(red: 0.0, green: 0.4, blue: 1, alpha: 1)))
//                .foregroundColor(.white)
//                .cornerRadius(10)
//                .controlSize(.large)
//                .padding(10)
//                Spacer()
            }.navigationDestination(isPresented: $showPhysical) {
                    PhysicalSubCategoryView()
                
            }
            
        }
        
    }
}

struct CatagoriesView_Previews: PreviewProvider {
    static var previews: some View {
        CategoriesView()
    }
}
