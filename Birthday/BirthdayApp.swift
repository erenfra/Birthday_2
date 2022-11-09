//
//  BirthdayApp.swift
//  Birthday
//
//  Created by Renato Oliveira Fraga on 8/5/22.
//

import SwiftUI

@main
struct BirthdayApp: App {
    @StateObject private var dataControler = DataController()
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, dataControler.container.viewContext)
        }
    }
}
