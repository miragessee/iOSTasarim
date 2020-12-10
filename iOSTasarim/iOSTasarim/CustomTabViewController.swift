//
//  CustomTabViewController.swift
//  iOSTasarim
//
//  Created by Hakan UNAL on 8.12.2020.
//

import UIKit
import STTabbar

class CustomTabViewController: UITabBarController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if let myTabbar = tabBar as? STTabbar {
            
            myTabbar.centerButtonActionHandler = {
                print("Center Button Tapped")
                
                let vc = self.storyboard?.instantiateViewController(withIdentifier: "PresentSayfasiViewController") as! PresentSayfasiViewController
                self.present(vc, animated: true, completion: nil)
            }
        }
        
        /*for vc in self.viewControllers! {
            //vc.tabBarItem.title = nil
            vc.tabBarItem.imageInsets = UIEdgeInsets(top: 0, left: 0, bottom: 100, right: 0)
        }
        
        self.tabBarItem.imageInsets = UIEdgeInsets(top: 0, left: 0, bottom: 100, right: 0)*/
        //self.tabBarItem.title = nil
        
        /*let array = tabBarController?.customizableViewControllers
        for controller in array! {
            controller.tabBarItem.imageInsets = UIEdgeInsets(top: 0, left: 0, bottom: 100, right: 0)
        }*/
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        
        //tabBar.frame.size.height = 200
        //tabBar.frame.origin.y = view.frame.height - 200
        
        self.tabBar.frame = CGRect( x: 0, y: view.frame.height - 100, width: view.frame.width, height: 100)
        //self.tabBarItem.imageInsets = UIEdgeInsets(top: 0, left: 0, bottom: 100, right: 0)
        //self.tabBarItem.title = nil
    }
    
    override func viewWillLayoutSubviews() {
        super.viewWillLayoutSubviews()

        //tabBar.frame.size.height = 200
        //tabBar.frame.origin.y = view.frame.height - 200
        
        self.tabBar.frame = CGRect( x: 0, y: view.frame.height - 100, width: view.frame.width, height: 100)
        //self.tabBarItem.imageInsets = UIEdgeInsets(top: 0, left: 0, bottom: 100, right: 0)
        //self.tabBarItem.title = nil
    }
}
