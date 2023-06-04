//
//  Categoria+CoreDataProperties.swift
//  NotasApp
//
//  Created by Jose on 3/06/23.
//
//

import Foundation
import CoreData


extension Categoria {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<Categoria> {
        return NSFetchRequest<Categoria>(entityName: "Categoria")
    }

    @NSManaged public var id: UUID?
    @NSManaged public var tipo: String?
    @NSManaged public var tareas: NSSet?

}

// MARK: Generated accessors for tareas
extension Categoria {

    @objc(addTareasObject:)
    @NSManaged public func addToTareas(_ value: Tarea)

    @objc(removeTareasObject:)
    @NSManaged public func removeFromTareas(_ value: Tarea)

    @objc(addTareas:)
    @NSManaged public func addToTareas(_ values: NSSet)

    @objc(removeTareas:)
    @NSManaged public func removeFromTareas(_ values: NSSet)

}

extension Categoria : Identifiable {

}
