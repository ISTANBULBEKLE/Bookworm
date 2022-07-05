//
//  DataController.swift
//  Bookworm
//
//  Created by ekip.kalir on 04/07/2022.
//

import Foundation
import CoreData

class DataController: ObservableObject{
    let container = NSPersistentContainer(name :"Bookworm")
    
    init () {
        container.loadPersistentStores {description, error in
            if let error = error {
                print("Core Data failed to load: \(error.localizedDescription)")
            }
        }
    }
}
