//
//  RunViewController.swift
//  MoYeoRunToy
//
//  Created by 김상현 on 2022/03/14.
//

import Foundation
import UIKit

class RunViewController: UIViewController{
    
    @IBOutlet weak var profielImageView: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.profielImageView.layer.cornerRadius = self.profielImageView.bounds.height / 2
        self.profielImageView.layer.masksToBounds = true
        self.profielImageView.layer.borderWidth = 0
    }
}
