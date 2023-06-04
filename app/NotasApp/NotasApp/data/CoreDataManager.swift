//
//  CoreDataManager.swift
//  NotasApp
//
//  Created by Jose on 2/06/23.
//

import Foundation
import CoreData


class CoreDataManager {
    
    static let shared = CoreDataManager(modelName: "DataModel")
    
    let persistentContainer : NSPersistentContainer
    var viewContext: NSManagedObjectContext {
        return persistentContainer.viewContext
    }
    
    
    init(modelName: String){
        persistentContainer = NSPersistentContainer(name: modelName)
    }
    
    func load(completion: (() -> Void)? = nil){
        persistentContainer.loadPersistentStores {
            (info, error) in
            
            guard error == nil else {
                fatalError(error!.localizedDescription)
            }
            completion?()
        }
    }
    
    func save() {
            if viewContext.hasChanges {
                do {
                    try viewContext.save()
                    print("Se agregó sin problemas")
                } catch {
                    print("An error ocurred while saving: \(error.localizedDescription)")
                }
            }
    }
}

protocol CoreDataCRUD{
    associatedtype T
    func saveData(data: T)
    func allData() -> [T]
    func deleteData(uuid: String)
    func updateData(data: T)
}



