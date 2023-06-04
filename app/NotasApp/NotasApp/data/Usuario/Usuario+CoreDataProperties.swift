//
//  Usuario+CoreDataProperties.swift
//  NotasApp
//
//  Created by Jose on 3/06/23.
//
//

import Foundation
import CoreData


extension Usuario {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<Usuario> {
        return NSFetchRequest<Usuario>(entityName: "Usuario")
    }

    @NSManaged public var apellidos: String?
    @NSManaged public var correo: String?
    @NSManaged public var id: UUID?
    @NSManaged public var nacimiento: Date?
    @NSManaged public var nombres: String?
    @NSManaged public var telefono: String?
    @NSManaged public var cuenta: Cuenta!
    @NSManaged public var tareas: NSSet?

}

// MARK: Generated accessors for tareas
extension Usuario {

    @objc(addTareasObject:)
    @NSManaged public func addToTareas(_ value: Tarea)

    @objc(removeTareasObject:)
    @NSManaged public func removeFromTareas(_ value: Tarea)

    @objc(addTareas:)
    @NSManaged public func addToTareas(_ values: NSSet)

    @objc(removeTareas:)
    @NSManaged public func removeFromTareas(_ values: NSSet)

}

extension Usuario : Identifiable {

}
