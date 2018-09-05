//
//  CoreDataStack.swift
//  PlaylistPractice2
//
//  Created by Porter Frazier on 9/5/18.
//  Copyright © 2018 BULB. All rights reserved.
//

import Foundation
import CoreData

enum CoreDataStack {
    
    static let container: NSPersistentContainer = {
        let container = NSPersistentContainer(name: "PlaylistPractice2")
        container.loadPersistentStores(completionHandler: { (_, error) in
            if let error = error{
                fatalError("Failed to load Data from persistent store")
                
            }
        })
        return container
    }()
    static var context: NSManagedObjectContext {
        return container.viewContext
    }
}
