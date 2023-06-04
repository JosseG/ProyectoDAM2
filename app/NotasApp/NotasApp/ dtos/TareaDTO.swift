//
//  Tarea.swift
//  NotasApp
//
//  Created by Jose on 2/06/23.
//

import Foundation


struct TareaDTO{
    
    var id: UUID?
    var estado: String?
    var descripcion: String?
    var prioridad: Int16?
    var fechaFin: Date?
    var fechaLimite: Date?
    var creadoEn: Date?
    var actualizadoEn: Date?
    var categoria: Categoria?
    var usuario: Usuario?
    
    
    static func  mapToDTO(tarea: Tarea) -> TareaDTO {
        var tareaDTO = TareaDTO()
        tareaDTO.id = tarea.id
        tareaDTO.estado = tarea.estado
        tareaDTO.descripcion = tarea.descripcion
        tareaDTO.prioridad = tarea.prioridad
        tareaDTO.fechaFin = tarea.fechaFin
        tareaDTO.fechaLimite = tarea.fechaLimite
        tareaDTO.creadoEn = tarea.creadoEn
        tareaDTO.actualizadoEn = tarea.actualizadoEn
        tareaDTO.categoria = tarea.categoria
        tareaDTO.usuario = tarea.usuario
        return tareaDTO
    }
    
}
