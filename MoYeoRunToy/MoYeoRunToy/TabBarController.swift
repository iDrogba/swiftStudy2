//
//  TabBarController.swift
//  MoYeoRunToy
//
//  Created by 김상현 on 2022/03/13.
//

import Foundation
import UIKit

class TabBarController: UITabBarController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setUI()
    }
    
    func setUI() {
       setTabBarShadow()
    }
    
    func setTabBarShadow(){
        UITabBar.clearShadow()
        tabBar.layer.applyShadow(color: .gray, alpha: 0.3, x: 0, y: 0, blur: 12)
    }
}
