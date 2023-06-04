//
//  RegistroViewController.swift
//  NotasApp
//
//  Created by Jose on 2/06/23.
//

import UIKit

class RegistroViewController: UIViewController {
    
    @IBOutlet weak var passwordTxt: UITextField!
    
    @IBOutlet weak var usernameTxt: UITextField!
    
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    
    @IBAction func registrar(_ sender: UIButton) {
        
        let password = passwordTxt.text
        let username = usernameTxt.text
        
        if let usernametoDB = username {
            if let passwordtoDB = password {
                if(!usernametoDB.isEmpty || !passwordtoDB.isEmpty){
                    var cuentaDTO = CuentaDTO()
                    cuentaDTO.username = usernametoDB
                    cuentaDTO.password = passwordtoDB
                    
                    CoreDataManager.shared.saveData(data: cuentaDTO)
                }
            }
        }
        
        
        print("Se llego aquí")
    }

    

}
