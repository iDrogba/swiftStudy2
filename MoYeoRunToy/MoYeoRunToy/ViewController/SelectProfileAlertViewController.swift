//
//  SelectProfileAlertViewController.swift
//  MoYeoRunToy
//
//  Created by 김상현 on 2022/04/16.
//

import UIKit

class SelectProfileImageAlertViewController: UIViewController {
    
    @IBOutlet weak var selectOnGalleryButton: UIButton!
    @IBOutlet weak var selectOnExistingImage: UIButton!
    @IBOutlet weak var stackView: UIStackView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setUI()
    }
    func setUI() {
        stackView.layer.cornerRadius = 12
        stackView.layer.masksToBounds = true
        
        selectOnGalleryButton.layer.addBorder([.top], color: UIColor(red: 235, green: 236, blue: 239, a: 1), width: 1)
        selectOnExistingImage.layer.addBorder([.top], color: UIColor(red: 235, green: 236, blue: 239, a: 1), width: 1)
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
