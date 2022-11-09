//
//  AddFriendView.swift
//  Birthday
//
//  Created by Renato Oliveira Fraga on 11/8/22.
//

import SwiftUI

struct AddFriendView: View {
    @Environment(\.managedObjectContext) var moc
    @Environment(\.dismiss) var dismiss
    
    @State private var name: String = ""
    @State private var birthdayDate = Date()
    
    var body: some View {
        NavigationStack {
            Form {
                Section {
                    TextField("Name:", text: $name)
                }
                
                Section {
                    DatePicker("Birthday:", selection: $birthdayDate, displayedComponents: .date)
                        .labelsHidden()
                    
                }
                Section {
                    Button("Save") {
                        let newFriend = Friend(context: moc)
                        newFriend.id = UUID()
                        newFriend.name = name
                        newFriend.birthday = birthdayDate
                        
                        try? moc.save()
                        dismiss()
                    }
                }
                
            }
            .navigationTitle("Add Friend")
        }
    }
}

struct AddFriendView_Previews: PreviewProvider {
    static var previews: some View {
        AddFriendView()
    }
}
