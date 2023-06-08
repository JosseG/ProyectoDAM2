//
//  MenuViewController.swift
//  NotasApp
//
//  Created by Jose on 2/06/23.
//

import UIKit

class MenuViewController: UIViewController {

    @IBOutlet weak var lblBienvenida: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationItem.hidesBackButton = true;
        lblBienvenida.text?.append((UserDefaults.standard.value(forKey: "username") as? String)!)
        // Do any additional setup after loading the view.
    }
    
    

    
    @IBAction func logout(_ sender: UIButton) {
        UserDefaults.standard.set(nil, forKey: "username")
        UserDefaults.standard.synchronize()
        
        let navInitialVC = self.storyboard?.instantiateViewController(withIdentifier: "LoginViewController")
        
        let connectedScenes = UIApplication.shared.connectedScenes
            .filter { $0.activationState == .foregroundActive }
            .compactMap { $0 as? UIWindowScene }
        
        let window = connectedScenes.first?.windows.first{$0.isKeyWindow}
        
        window?.rootViewController = navInitialVC
        window?.makeKeyAndVisible()
        
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
