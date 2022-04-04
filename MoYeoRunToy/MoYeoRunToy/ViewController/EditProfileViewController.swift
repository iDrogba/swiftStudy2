//
//  EditProfileViewController.swift
//  MoYeoRunToy
//
//  Created by 김상현 on 2022/04/02.
//

import UIKit

class EditProfileViewController: UIViewController {
    @IBOutlet weak var profileImageView: UIImageView!
    @IBOutlet weak var cameraSymbolButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setUI()
    }
    
    func setUI(){
        setProfileImageView()
        setCameraSymbolButton()
    }
    
    func setProfileImageView(){
        self.profileImageView.layer.cornerRadius = self.profileImageView.bounds.size.width * 0.5
        self.profileImageView.layer.masksToBounds = true
    }
    
    func setCameraSymbolButton(){
        self.cameraSymbolButton.layer.cornerRadius = self.cameraSymbolButton.frame.width / 2
        self.cameraSymbolButton.layer.masksToBounds = true
        self.cameraSymbolButton.layer.borderWidth = 0
        cameraSymbolButton.imageView?.adjustsImageSizeForAccessibilityContentSizeCategory = true
    }
    @IBAction func onTouchBackButton(_ sender: Any) {
        self.dismiss(animated: true)
    }
}
