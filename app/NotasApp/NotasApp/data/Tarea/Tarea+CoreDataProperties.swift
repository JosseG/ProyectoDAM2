//
//  Tarea+CoreDataProperties.swift
//  NotasApp
//
//  Created by Jose on 3/06/23.
//
//

import Foundation
import CoreData


extension Tarea {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<Tarea> {
        return NSFetchRequest<Tarea>(entityName: "Tarea")
    }

    @NSManaged public var actualizadoEn: Date?
    @NSManaged public var creadoEn: Date?
    @NSManaged public var descripcion: String?
    @NSManaged public var estado: String?
    @NSManaged public var fechaFin: Date?
    @NSManaged public var fechaLimite: Date?
    @NSManaged public var id: UUID?
    @NSManaged public var prioridad: Int16
    @NSManaged public var categoria: Categoria?
    @NSManaged public var usuario: Usuario?

}

extension Tarea : Identifiable {

}
