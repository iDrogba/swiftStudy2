//
//  HomeViewController.swift
//  MoYeoRunToy
//
//  Created by 김상현 on 2022/03/14.
//

import Foundation
import UIKit

// 고정 높이 320
class HomeViewController: UIViewController{
    
    let fixedHeight: CGFloat = 320
    let screenHeight: CGFloat = UIScreen.main.bounds.height
    var screenHeightForSetting: CGFloat = 0 // 적당한 이름이 생각이 안남..ㅠ
    var multiplier: CGFloat = 0
    
    @IBOutlet weak var profileImageView: UIImageView!
    @IBOutlet weak var scrollViewHeightConstraint: NSLayoutConstraint!
    @IBOutlet weak var nowPopularCollectionView_HeightConstraint: NSLayoutConstraint!
    @IBOutlet weak var newMissionCollectionView_HeightConstraint: NSLayoutConstraint!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setUI()
    }
    
    func setUI(){
        setProfileImageView()
        setHeightConstraint()
    }
    
    func setProfileImageView(){
        self.profileImageView.layer.cornerRadius = self.profileImageView.frame.width / 2
        self.profileImageView.layer.masksToBounds = true
        self.profileImageView.layer.borderWidth = 0
    }
    
    func setHeightConstraint(){
        multiplier = (UIScreen.main.bounds.height > 800) ? 1 : 1.1
        screenHeightForSetting = screenHeight * multiplier
        
        scrollViewHeightConstraint.constant = screenHeightForSetting + fixedHeight
        nowPopularCollectionView_HeightConstraint.constant = screenHeightForSetting * 0.26
        newMissionCollectionView_HeightConstraint.constant = screenHeightForSetting * 0.5 + 100
        print(multiplier)
    }
}
