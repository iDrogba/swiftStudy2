//
//  SelectProfileAlertViewController.swift
//  MoYeoRunToy
//
//  Created by 김상현 on 2022/04/16.
//

import UIKit

class SelectProfileImageAlertViewController: UIViewController {
    
    @IBOutlet var backgroundView: UIView!
    @IBOutlet weak var profileImageLabel: UILabel!
    @IBOutlet weak var selectOnGalleryButton: UIButton!
    @IBOutlet weak var selectOnExistingImage: UIButton!
    @IBOutlet weak var stackView: UIStackView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setUI()
        setOnTapAction()
    }
    
    func setUI() {
        self.stackView.layer.cornerRadius = 12
        self.stackView.layer.masksToBounds = true
        
        self.selectOnGalleryButton.layer.addBorder([.top], color: UIColor(red: 235, green: 236, blue: 239, a: 1), width: 1)
        self.selectOnExistingImage.layer.addBorder([.top], color: UIColor(red: 235, green: 236, blue: 239, a: 1), width: 1)
    }
    
    func setOnTapAction() {
        self.profileImageLabel.isUserInteractionEnabled = true
        self.profileImageLabel.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(self.profileImageLabelTapped(_:))))
        
        self.backgroundView.isUserInteractionEnabled = true
        self.backgroundView.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(self.viewTapped)))
    }
    
    @objc func profileImageLabelTapped(_ sender: UITapGestureRecognizer) {}
    
    @objc func viewTapped(_ sender: UITapGestureRecognizer) {
        print("\(sender.view!.tag) 클릭됨")
        self.dismiss(animated: false)
    }
}

extension CALayer {
    func addBorder(_ arr_edge: [UIRectEdge], color: UIColor, width: CGFloat) {
        for edge in arr_edge {
            let border = CALayer()
            switch edge {
            case UIRectEdge.top:
                border.frame = CGRect.init(x: 0, y: 0, width: frame.width, height: width)
                break
            case UIRectEdge.bottom:
                border.frame = CGRect.init(x: 0, y: frame.height - width, width: frame.width, height: width)
                break
            case UIRectEdge.left:
                border.frame = CGRect.init(x: 0, y: 0, width: width, height: frame.height)
                break
            case UIRectEdge.right:
                border.frame = CGRect.init(x: frame.width - width, y: 0, width: width, height: frame.height)
                break
            default:
                break
            }
            border.backgroundColor = color.cgColor;
            self.addSublayer(border)
        }
    }
}
