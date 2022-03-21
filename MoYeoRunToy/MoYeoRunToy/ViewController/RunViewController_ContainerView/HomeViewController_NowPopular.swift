//
//  HomeViewController_NowPopular.swift
//  MoYeoRunToy
//
//  Created by 김상현 on 2022/03/21.
//

import Foundation
import UIKit

class HomeViewController_NowPopular: UIViewController, UICollectionViewDataSource,UICollectionViewDelegateFlowLayout {
    
    //UICollectionViewDataSource
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 5
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "HomeViewController_NowPopular_CollectionView_Cell", for: indexPath) as? HomeViewController_NowPopular_CollectionView_Cell else {
            return UICollectionViewCell()
        }
        cell.setUI()
        
        return cell
    }
    
    //UICollectionViewDelegateFlowLayout
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        
        let width = collectionView.bounds.width * 0.8
        let height = collectionView.bounds.height * 0.95
        
        return CGSize(width: width, height: height)
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets {
        return UIEdgeInsets(top: 0, left: 15, bottom: 0, right: 15)
    }
    
}
class HomeViewController_NowPopular_CollectionView_Cell : UICollectionViewCell {
    
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var numberOfPartyLabel: UILabel!
    
    
    func setUI() {
        imageView.layer.cornerRadius = 3
        imageView.image = UIImage(named: "img1.jpeg")
        titleLabel.text = "바람 부는 날\n5km 함께 뛰어요"
        setNumberOfPartyLabel()
    }
    
    func setNumberOfPartyLabel(){
        let attributedString = NSMutableAttributedString(string: "")
        let imageAttachment = NSTextAttachment()
        imageAttachment.image = UIImage(named: "참가자.png")
        imageAttachment.bounds = CGRect(x: 0, y: 0, width: 13, height: 13)
        
        attributedString.append(NSAttributedString(attachment: imageAttachment))
        attributedString.append(NSAttributedString(string: "3/4"))
        
        numberOfPartyLabel.attributedText = attributedString
        numberOfPartyLabel.sizeToFit()
    }
}
