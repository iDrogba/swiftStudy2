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
    
    let fixedHeight: CGFloat = 335
    let screenHeight: CGFloat = UIScreen.main.bounds.height
    var screenHeightForSetting: CGFloat = 0 // 적당한 이름이 생각이 안남..ㅠ
    var multiplier: CGFloat = 0
    
    @IBOutlet weak var profileImageView: UIButton!
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
        profileImageView.imageView?.adjustsImageSizeForAccessibilityContentSizeCategory = true
    }
    
    func setHeightConstraint(){
        multiplier = (UIScreen.main.bounds.height > 800) ? 1 : 1.1
        screenHeightForSetting = screenHeight * multiplier
        
        scrollViewHeightConstraint.constant = screenHeightForSetting + fixedHeight
        nowPopularCollectionView_HeightConstraint.constant = screenHeightForSetting * 0.25
        newMissionCollectionView_HeightConstraint.constant = screenHeightForSetting * 0.5 + 110
        print(multiplier)
    }
    @IBAction func onTouchProfileImage(_ sender: Any) {
        let storyboard = UIStoryboard(name: "SignUpBasicInformation", bundle: nil)
        let viewcontroller = storyboard.instantiateViewController(withIdentifier: "SignUpBasicInformation")
        viewcontroller.modalPresentationStyle = .fullScreen
        self.present(viewcontroller, animated: true)
        
//        let sb = UIStoryboard(name: "MyPage", bundle: nil)
//        let vc = sb.instantiateViewController(withIdentifier: "MyPageViewController")
//        vc.modalPresentationStyle = .fullScreen
//        self.present(vc, animated: true)
    }
}
