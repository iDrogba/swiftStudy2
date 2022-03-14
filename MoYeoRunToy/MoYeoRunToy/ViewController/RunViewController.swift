//
//  RunViewController.swift
//  MoYeoRunToy
//
//  Created by 김상현 on 2022/03/14.
//

import Foundation
import UIKit

class RunViewController: UIViewController{
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
}

extension RunViewController: UICollectionViewDataSource{
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        

    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        <#code#>
    }
    
    
}

extension RunViewController: UICollectionViewDelegateFlowLayout{
    // CollectionViewHeader 세팅
    // UIView넣어주기 RunViewController_NowRunning
    // RunViewController_NewMission
    // RunViewController_Record
    
}

class RunCollectionViewHeaderView: UICollectionReusableView{
    
    @IBOutlet weak var profileImageView: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        setUI()
    }
    
    func setUI(){
        self.profileImageView.layer.cornerRadius = self.profileImageView.frame.width / 2
        self.profileImageView.layer.masksToBounds = true
        self.profileImageView.layer.borderWidth = 0
    }
}
class RunCollectionViewCell: UICollectionViewCell {
    
}
