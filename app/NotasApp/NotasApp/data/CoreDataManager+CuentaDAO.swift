//
//  CoreDataManager+CuentaDAO.swift
//  NotasApp
//
//  Created by DAMII on 3/06/23.
//

import Foundation
import CoreData

extension CoreDataManager : CoreDataCRUD {
    
    typealias T = CuentaDTO
     
    func deleteData(uuid: String) {
        searchDataById(uuid: uuid){  [weak self] element in
            
            guard let self = self else {return }
            do {
                self.viewContext.delete(element)
                try self.viewContext.save()
            } catch {
                print(error.localizedDescription)
            }
        }
    }
    
    func saveData(data: CuentaDTO) {
        let cuenta = Cuenta(context: viewContext)
        cuenta.id = UUID()
        cuenta.username = data.username
        cuenta.password = data.password
        save()
    }
    
    func allData() -> [CuentaDTO] {
        let fetchListRequest: NSFetchRequest<Cuenta> = Cuenta.fetchRequest()
                var lists = [Cuenta]()
                do {
                    lists = try viewContext.fetch(fetchListRequest)
                } catch {
                    print(error.localizedDescription)
                }
        return lists.map{e in CuentaDTO.mapToDTO(cuenta: e)}
    }
    
    func updateData(data: CuentaDTO) {
        searchDataById(uuid: data.id!.uuidString) { [weak self] element in
            guard let self = self else {return }
            do {
                element.username = data.username
                element.password = data.password
                try self.viewContext.save()
            } catch {
                print(error.localizedDescription)
            }
        }
    }
    
    func searchDataByUsername(username:String) -> CuentaDTO?{
        let fetchListRequest: NSFetchRequest<Cuenta> = Cuenta.fetchRequest()
        let predicate: NSPredicate = NSPredicate(format: "username == %@", username)
        fetchListRequest.predicate = predicate
        
        do {
            let objects = try viewContext.fetch(fetchListRequest)
            guard let cuenta = objects.first else { return nil}
            return CuentaDTO.mapToDTO(cuenta: cuenta)
        } catch {
            print(error.localizedDescription)
        }
        return nil
    }

    private func searchDataById(uuid: String, completion: @escaping(Cuenta) -> Void ) {
            let fetchListRequest: NSFetchRequest<Cuenta> = Cuenta.fetchRequest()
            let predicate: NSPredicate = NSPredicate(format: "id == %@", uuid)
            fetchListRequest.predicate = predicate
            
            do {
                let objects = try viewContext.fetch(fetchListRequest)
                guard let cuenta = objects.first else { return }
                completion(cuenta)
            } catch {
                print(error.localizedDescription)
            }
        }
}
