//
//  CustomTabBarViewController.swift
//  SmartWork
//
//  Created by 🍑 on 2021/5/8.
//

import UIKit

class CustomTabBarViewController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        initTabBar()
    }
    
    func initTabBar()  {
        let msgSB = UIStoryboard.init(name: "MessageMainSb", bundle: nil)
        let msgVC = msgSB.instantiateViewController(withIdentifier: "MessageMainSb") as! MessageMainViewController
        setUpOneChildViewController(title: "消息", imageName: "", SeletedImageName: "", controller: msgVC)
        let workVC = WorkSpaceViewController()
        setUpOneChildViewController(title: "工作台", imageName: "", SeletedImageName: "", controller: workVC)
        let contactVC = ContactListViewController()
        setUpOneChildViewController(title: "联系人", imageName: "", SeletedImageName: "", controller: contactVC)
        let myVC = MyViewController()
        setUpOneChildViewController(title: "我的", imageName: "", SeletedImageName: "", controller: myVC)
    }
    
    fileprivate func setUpOneChildViewController(title: String, imageName:String ,SeletedImageName: String ,controller: UIViewController){
        
        controller.tabBarItem.title = title
        controller.title = title
        controller.view.backgroundColor = UIColor.white
        controller.tabBarItem.image = UIImage.init(named: imageName)
        controller.tabBarItem.selectedImage = UIImage.init(named: SeletedImageName)
        let naviController = UINavigationController.init(rootViewController: controller)
        addChild(naviController)
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
