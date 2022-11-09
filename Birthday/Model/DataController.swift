//
//  DataController.swift
//  Birthday
//
//  Created by Renato Oliveira Fraga on 11/8/22.
//
import CoreData
import Foundation


class DataController: ObservableObject {
    let container = NSPersistentContainer(name: "BirthdayData")
    
    
    init() {
        container.loadPersistentStores { description, error in
            if let error = error {
                print("Core Data failed to load: \(error.localizedDescription)")
            }
        }
    }
}
