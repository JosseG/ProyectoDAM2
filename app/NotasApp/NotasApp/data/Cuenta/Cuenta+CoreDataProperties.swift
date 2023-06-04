//
//  Cuenta+CoreDataProperties.swift
//  NotasApp
//
//  Created by Jose on 3/06/23.
//
//

import Foundation
import CoreData


extension Cuenta {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<Cuenta> {
        return NSFetchRequest<Cuenta>(entityName: "Cuenta")
    }

    @NSManaged public var id: UUID?
    @NSManaged public var password: String?
    @NSManaged public var username: String?
    @NSManaged public var usuario: Usuario?

}

extension Cuenta : Identifiable {

}
