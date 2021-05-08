//
//  MessageMainViewController.swift
//  SmartWork
//
//  Created by 🍑 on 2021/5/8.
//

import UIKit

class MessageMainViewController: UIViewController {
   
    override func viewDidLoad() {
        super.viewDidLoad()

        
        // Do any additional setup after loading the view.
    }
    
    override func viewWillAppear(_ animated: Bool) {
        self.navigationController?.navigationBar.isHidden = true
        let hasLogin = UserDefaults.standard.bool(forKey: "login")
        if !hasLogin {
            let loginSB = UIStoryboard.init(name: "LoginViewControllerSb", bundle: nil)
            let loginVC = loginSB.instantiateViewController(withIdentifier: "LoginViewControllerSb") as! LoginViewController
            self.navigationController?.present(loginVC, animated: true, completion: nil)
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
