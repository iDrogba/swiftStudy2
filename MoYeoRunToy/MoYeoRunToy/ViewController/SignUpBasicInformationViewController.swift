//
//  SignUpBasicInformationViewController.swift
//  MoYeoRunToy
//
//  Created by 김상현 on 2022/04/05.
//

import UIKit

class SignUpBasicInformationViewController: UIViewController {
    
    @IBOutlet weak var navigationBar: UINavigationBar!
    @IBOutlet weak var profileImageView: UIImageView!
    @IBOutlet weak var cameraSymbolButton: UIButton!
    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var nickNameTextField: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setUI()
    }
    
    func setUI() {
        setProfileImageView()
        setCameraSymbolButton()

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
    }
    
    @IBAction func onTapCameraSymbolButton(_ sender: Any) {
        let storyboard = UIStoryboard(name: "SelectProfileImageAlertStoryboard", bundle: nil)
        let viewController = storyboard.instantiateViewController(withIdentifier: "SelectProfileImageAlertViewController")
        viewController.modalPresentationStyle = .overCurrentContext
        self.present(viewController, animated: false)
    }
    
    @IBAction func onTapMoveBackwardButton(_ sender: Any) {
        self.dismiss(animated: false)
    }
}
