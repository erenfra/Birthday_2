//
//  ContentView.swift
//  Birthday
//
//  Created by Renato Oliveira Fraga on 8/5/22.
//

import SwiftUI

struct ContentView: View {
    //@Environment(\.managedObjectContext) var moc
    //@FetchRequest(sortDescriptors: []) var friends: FetchedResults<Friend>
    
    @State private var showingAddFriendScreen = false
    
    var body: some View {
        NavigationStack {
            VStack {
                Image("Top_Image")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                
                ZStack {
                    Rectangle()
                        .frame(width: 160, height: 40)
                        .cornerRadius(25)
                        .foregroundColor(.blue)
                        
                    Text("Add New Friend")
                        .font(.body.bold())
                        .foregroundColor(.white)
                }
                
                Grid(horizontalSpacing: 20,verticalSpacing: 20){
                    GridRow {
                        NavigationLink(destination: SelectionView(), isActive: $showingAddFriendScreen) {
                            Button(action: {showingAddFriendScreen=true}, label: { MonthBlock(monthBox: "Jan") })
                        }
                       MonthBlock(monthBox: "Feb")
                       MonthBlock(monthBox: "Mar")
                    }
                    GridRow {
                        MonthBlock(monthBox: "Apr")
                        MonthBlock(monthBox: "May")
                        MonthBlock(monthBox: "Jun")
                    }
                    GridRow {
                        MonthBlock(monthBox: "Jul")
                        MonthBlock(monthBox: "Aug")
                        MonthBlock(monthBox: "Sep")
                    }
                    GridRow {
                        MonthBlock(monthBox: "Oct")
                        MonthBlock(monthBox: "Nov")
                        MonthBlock(monthBox: "Dec")
                    }
                }.padding()
          
                
                
            }

        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
