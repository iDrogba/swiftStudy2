//
//  HomeViewController_LastRecord.swift
//  MoYeoRunToy
//
//  Created by 김상현 on 2022/03/21.
//

import Foundation
import UIKit

class HomeViewController_LastRecord: UIViewController,UICollectionViewDataSource,UICollectionViewDelegateFlowLayout {
    //UICollectionViewDataSource
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 2
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "HomeViewController_LastRecord_CollectionView_Cell", for: indexPath) as? HomeViewController_LastRecord_CollectionView_Cell else {
            return UICollectionViewCell()
        }
        cell.setUI()
        
        return cell
    }
    
    //UICollectionViewDelegateFlowLayout
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        
        let width = collectionView.bounds.width
        let height = collectionView.bounds.height * 0.49
        
        return CGSize(width: width, height: height)
    }
    
}
class HomeViewController_LastRecord_CollectionView_Cell: UICollectionViewCell {
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var rankingTitleLabel: UILabel!
    @IBOutlet weak var rankingRankLabel: UILabel!
    
    func setUI() {
        imageView.layer.cornerRadius = 3
        imageView.image = UIImage(named: "img1.jpeg")
    }
}

