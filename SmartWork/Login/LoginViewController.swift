//
//  LoginViewController.swift
//  SmartWork
//
//  Created by 🍑 on 2021/5/8.
//

import UIKit

class LoginViewController: UIViewController {
    
    @IBOutlet var accountTF  : UITextField?
    @IBOutlet var passwordTF : UITextField?
    @IBOutlet var loginButton : UIButton?
    @IBOutlet var rememberButron : UIButton?
    @IBOutlet var fogetPSWButton : UIButton?
    @IBOutlet var registerButton : UIButton?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    private func setupUI() {
        
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
extension LoginViewController {
    
    @IBAction func loginButtonWasClicked() {
        UserDefaults.standard.setValue(true, forKey: "login")
        self.navigationController?.dismiss(animated: false, completion: {
            
        })
    }
    
    @IBAction func rememberButronWasClicked() {
        
    }
    
    @IBAction func fogetPSWButtonWasClicked(){
        
    }
    
    @IBAction func registerButtonWasClicked(){
        
    }
    
}
