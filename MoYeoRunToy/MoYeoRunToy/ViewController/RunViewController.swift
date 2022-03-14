//
//  RunViewController.swift
//  MoYeoRunToy
//
//  Created by 김상현 on 2022/03/14.
//

import Foundation
import UIKit

class RunViewController: UIViewController{
    
    @IBOutlet weak var profileImageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setUI()
    }
    
    func setUI(){
        self.profileImageView.layer.cornerRadius = self.profileImageView.frame.width / 2
        self.profileImageView.layer.masksToBounds = true
        self.profileImageView.layer.borderWidth = 0
    }
    
}
