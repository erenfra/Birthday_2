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
                Spacer()
            }
        }
    }
}

struct SelectionView_Previews: PreviewProvider {
    static var previews: some View {
        SelectionView()
    }
}
