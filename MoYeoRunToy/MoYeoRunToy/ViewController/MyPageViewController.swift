//
//  MyPageViewController.swift
//  MoYeoRunToy
//
//  Created by 김상현 on 2022/03/29.
//

import UIKit

class MyPageViewController: UIViewController {
    @IBOutlet weak var profileImageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setUI()
    }
    
    func setUI(){
        setProfileImageView()
    }
    
    func setProfileImageView(){
        self.profileImageView.layer.cornerRadius = self.profileImageView.frame.width / 2
        self.profileImageView.layer.masksToBounds = true
        self.profileImageView.layer.borderWidth = 0
    }
    
}
