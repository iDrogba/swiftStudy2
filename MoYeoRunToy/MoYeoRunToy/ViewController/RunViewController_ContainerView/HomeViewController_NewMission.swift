//
//  HomeViewController_NewMission.swift
//  MoYeoRunToy
//
//  Created by 김상현 on 2022/03/21.
//

import Foundation
import UIKit

class HomeViewController_NewMission: UIViewController,UICollectionViewDataSource,UICollectionViewDelegateFlowLayout {
        
    //UICollectionViewDataSource
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 4
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "HomeViewController_NewMission_CollectionView_Cell", for: indexPath) as? HomeViewController_NewMission_CollectionView_Cell else {
            return UICollectionViewCell()
        }
        cell.setUI()
        
        return cell
    }
    
    //UICollectionViewDelegateFlowLayout
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        
        let width = collectionView.bounds.width * 0.49
        let height = collectionView.bounds.height * 0.49
        
        return CGSize(width: width, height: height)
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets {
        
        let width = collectionView.bounds.width * 0.49
        
        let totalWidth = width * 2
        let totalSpacingWidth: CGFloat = 10
        let leftInset = (collectionView.frame.width - CGFloat(totalWidth + totalSpacingWidth)) / 2
        let rightInset = leftInset
        
        return UIEdgeInsets(top: 0, left: leftInset, bottom: 0, right: rightInset)
        
    }
}
class HomeViewController_NewMission_CollectionView_Cell: UICollectionViewCell{
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var mainTitleLabel: UILabel!
    @IBOutlet weak var subTitleLabel: UILabel!
    
    func setUI() {
        imageView.layer.cornerRadius = 3
        imageView.image = UIImage(named: "img1.jpeg")
        
    }
}
