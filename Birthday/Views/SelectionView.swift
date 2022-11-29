//
//  SelectionView.swift
//  Birthday
//
//  Created by Renato Oliveira Fraga on 11/8/22.
//

import SwiftUI

struct SelectionView: View {
    @Environment(\.managedObjectContext) var moc
    @FetchRequest(sortDescriptors: []) var friends: FetchedResults<Friend>
    
    var body: some View {
        NavigationStack {
            VStack {
                Image("HappyBirthday")
                    .padding()
                ZStack {
                    Rectangle()
                        .frame(width: 200, height: 50)
                        .cornerRadius(25)
                        .foregroundColor(/*@START_MENU_TOKEN@*/Color("CstLightPurple")/*@END_MENU_TOKEN@*/)
                        
                    Text("November")
                        .font(.body.bold())
                }
                List {
                    ForEach(friends) { friend in
                        NavigationLink {
                            Text(friend.name ?? "Unknown Title")
                        } label: {
                            DetailRow(name: friend.name ?? "Unknown Title", day: friend.birthday?.formatted(.dateTime.day()) ?? "01", age: "22")
                        }
                    }
                }
                
        
            }
            
        }
    }
        
}

struct SelectionView_Previews: PreviewProvider {
    static var previews: some View {
        SelectionView()
    }
}
