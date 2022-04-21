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
        setBorderColor()
        setProfileImageView()
        setCameraSymbolButton()

        func setBorderColor() {
            let borderColor = UIColor(red: 212, green: 212, blue: 212, alpha: 1)
            
            nameTextField.layer.borderColor = borderColor.cgColor
            nickNameTextField.layer.borderColor = borderColor.cgColor
            nameTextField.layer.borderWidth = 1
            nickNameTextField.layer.borderWidth = 1
            nameTextField.clipsToBounds = true
            nickNameTextField.clipsToBounds = true
            nameTextField.layer.masksToBounds = true
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
