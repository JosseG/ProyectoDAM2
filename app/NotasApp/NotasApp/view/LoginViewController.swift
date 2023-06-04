//
//  LoginViewController.swift
//  NotasApp
//
//  Created by Jose on 2/06/23.
//

import UIKit

class LoginViewController: UIViewController {

    @IBOutlet weak var passwordTxt: UITextField!
    @IBOutlet weak var usernameTxt: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    @IBAction func iniciarSesion(_ sender: UIButton) {
        
        
        let password = passwordTxt.text
        let username = usernameTxt.text
        
        if let usernametoDB = username {
            if let passwordtoDB = password {
                if(!usernametoDB.isEmpty || !passwordtoDB.isEmpty){
                    let cuentaObt = CoreDataManager.shared.searchDataByUsername(username: usernametoDB)
                    
                    if(cuentaObt==nil){
                        print("No se encontró elementos")
                    }else{
                        print("Si encontró la cuenta")
                        if(cuentaObt?.password == passwordtoDB){
                            
                            UserDefaults.standard.set(usernametoDB, forKey: "username")
                            
                            print(UserDefaults.standard.value(forKey: "username"))
                            
                            let storyBoard : UIStoryboard = UIStoryboard(name: "Main", bundle:nil)
                            let nextViewController = storyBoard.instantiateViewController(withIdentifier: "MenuViewController") as! MenuViewController
                            self.navigationController?.pushViewController(nextViewController, animated: true)
                            print("Bienvenidos")
                            
                        }else{
                            let alert = UIAlertController(title: "Error", message: "Su contraseña no es correcta", preferredStyle: UIAlertController.Style.alert)

                            // add an action (button)
                            alert.addAction(UIAlertAction(title: "OK", style: UIAlertAction.Style.default, handler: nil))

                            // show the alert
                            self.present(alert, animated: true, completion: nil)
                        }

                    }
                    
                }
            }
        }
        
        
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
