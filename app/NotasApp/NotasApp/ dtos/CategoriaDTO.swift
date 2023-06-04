//
//  CategoriaExtra.swift
//  NotasApp
//
//  Created by Jose on 2/06/23.
//

import Foundation


struct CategoriaDTO{
    
    var id: UUID?
    var tipo: String?
    
    static func  mapToDTO(categoria: Categoria) -> CategoriaDTO {
        var categoriaDTO = CategoriaDTO()
        categoriaDTO.id = categoria.id
        categoriaDTO.tipo = categoria.tipo
        return categoriaDTO
    }
    
}
