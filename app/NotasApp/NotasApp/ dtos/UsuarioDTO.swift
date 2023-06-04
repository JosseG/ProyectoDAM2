//
//  Usuario.swift
//  NotasApp
//
//  Created by Jose on 1/06/23.
//

import Foundation

struct UsuarioDTO{
    
    var id: UUID?
    var nombre: String?
    var apellidos: String?
    var telefono: String?
    var correo: String?
    var nacimiento: Date?
    var cuenta: Cuenta?
    
    
    
    static func  mapToDTO(usuario: Usuario) -> UsuarioDTO {
        var usuarioDTO = UsuarioDTO()
        usuarioDTO.id = usuario.id
        usuarioDTO.nombre = usuario.nombres
        usuarioDTO.apellidos = usuario.apellidos
        usuarioDTO.telefono = usuario.telefono
        usuarioDTO.correo = usuario.correo
        usuarioDTO.nacimiento = usuario.nacimiento
        usuarioDTO.cuenta = usuario.cuenta
        return usuarioDTO
    }
    
    
}



