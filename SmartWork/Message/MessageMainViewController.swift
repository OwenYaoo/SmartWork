//
//  MessageMainViewController.swift
//  SmartWork
//
//  Created by 🍑 on 2021/5/8.
//

import UIKit

class MessageMainViewController: UIViewController {
    
    @IBOutlet var photoImageView : UIImageView!
    @IBOutlet var myCurrentStatusLabel : UILabel!
    @IBOutlet var myStatusSignLabel : UILabel!
    @IBOutlet var editStatusSignButton : UIButton!
    @IBOutlet var videoButton : UIButton!
    @IBOutlet var addMessageButton : UIButton!
    @IBOutlet var searchBar : UISearchBar!
    
    @IBOutlet var calendarButton : UIButton!
    @IBOutlet var todoButton : UIButton!
    @IBOutlet var noticeButton : UIButton!
    
    @IBOutlet var aitButton : UIButton!
    @IBOutlet var startButton : UIButton!
    @IBOutlet var alarmClockButton : UIButton!
    @IBOutlet var redPaperButton : UIButton!
    @IBOutlet var moreButton : UIButton!
    
    @IBOutlet var messageTableView : UITableView!
    
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
    
}

extension MessageMainViewController {
    
    @IBAction func editStatusSignButtonWasClicked() {
        print("editStatusSignButtonWasClicked")
    }
    
    @IBAction func videoButtonWasClicked() {
        print("videoButtonWasClicked")
    }
    
    @IBAction func addMessageButtonWasClicked() {
        print("addMessageButtonWasClicked")
    }
    
    @IBAction func calendarButtonWasClicked() {
        print("calendarButtonWasClicked")
        let calenderSB = UIStoryboard.init(name: "CalenderViewControllerSb", bundle: nil)
        let calenderVC = calenderSB.instantiateViewController(withIdentifier: "CalenderViewControllerSb") as! CalenderViewController
        self.navigationController?.pushViewController(calenderVC, animated: true)
    }
    
    @IBAction func todoButtonWasClicked() {
        print("todoButtonWasClicked")
    }
    
    @IBAction func noticeButtonWasClicked() {
        print("noticeButtonWasClicked")
    }
    
    @IBAction func aitButtonWasClicked() {
        print("aitButtonWasClicked")
    }
    
    @IBAction func startButtonWasClicked() {
        print("startButtonWasClicked")
    }
    
    @IBAction func alarmClockButtonWasClicked() {
        print("alarmClockButtonWasClicked")
    }
    
    @IBAction func redPaperButtonWasClicked(){
        print("redPaperButtonWasClicked")
    }
    
    @IBAction func moreButtonWasClicked(){
        print("moreButtonWasClicked")
    }
    
}
