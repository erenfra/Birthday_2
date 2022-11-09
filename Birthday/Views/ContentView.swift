//
//  ContentView.swift
//  Birthday
//
//  Created by Renato Oliveira Fraga on 8/5/22.
//

import SwiftUI

struct ContentView: View {
    @Environment(\.managedObjectContext) var moc
    @FetchRequest(sortDescriptors: []) var friends: FetchedResults<Friend>
    
    @State private var showingAddFriendScreen = false
    
    var body: some View {
        NavigationStack {
            VStack {
                Image("Top_Image")
                    .padding()
                Spacer()
                Text("Count: \(friends.count)")
                    .toolbar{
                        ToolbarItem(placement: .navigationBarTrailing) {
                            Button {
                                showingAddFriendScreen.toggle()
                            } label: {
                                Label("Add Friend", systemImage: "plus")
                            }
                        }
                    }
                    .sheet(isPresented: $showingAddFriendScreen) {
                        AddFriendView()
                    }
                Spacer()
                
            }

        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
