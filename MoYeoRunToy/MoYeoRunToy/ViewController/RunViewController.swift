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

class RunViewController_NowPopular: UIViewController, UICollectionViewDataSource,UICollectionViewDelegateFlowLayout {
    
    //UICollectionViewDataSource
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 5
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "RunViewController_NowPopular_CollectionView_Cell", for: indexPath) as? RunViewController_NowPopular_CollectionView_Cell else {
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
class RunViewController_NowPopular_CollectionView_Cell : UICollectionViewCell {
    @IBOutlet weak var imageView: UIImageView!
    
    func setUI() {
        imageView.layer.cornerRadius = 3
        imageView.image = UIImage(named: "2.jpg")
    }
}


class RunViewController_NewMission: UIViewController,UICollectionViewDataSource,UICollectionViewDelegateFlowLayout {
        
    //UICollectionViewDataSource
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 4
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "RunViewController_NewMission_CollectionView_Cell", for: indexPath) as? RunViewController_NewMission_CollectionView_Cell else {
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
class RunViewController_NewMission_CollectionView_Cell: UICollectionViewCell{
    @IBOutlet weak var imageView: UIImageView!
    
    func setUI() {
        imageView.layer.cornerRadius = 3
        imageView.image = UIImage(named: "1.jpg")
        
    }
}


class RunViewController_LastRecord: UIViewController,UICollectionViewDataSource,UICollectionViewDelegateFlowLayout {
    //UICollectionViewDataSource
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 2
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "RunViewController_LastRecord_CollectionView_Cell", for: indexPath) as? RunViewController_LastRecord_CollectionView_Cell else {
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
class RunViewController_LastRecord_CollectionView_Cell: UICollectionViewCell {
    @IBOutlet weak var imageView: UIImageView!
    
    func setUI() {
        imageView.layer.cornerRadius = 3
        imageView.image = UIImage(named: "2.jpg")
    }
}
