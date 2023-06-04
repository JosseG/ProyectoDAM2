//
//  CuentaDTO.swift
//  NotasApp
//
//  Created by Jose on 3/06/23.
//

import Foundation

struct CuentaDTO {
    var id: UUID?
    var username: String?
    var password: String?
    
    static func  mapToDTO(cuenta: Cuenta) -> CuentaDTO {
        var cuentaDTO : CuentaDTO = CuentaDTO()
        cuentaDTO.id = cuenta.id
        cuentaDTO.username = cuenta.username
        cuentaDTO.password = cuenta.password
        return cuentaDTO
    }
}


