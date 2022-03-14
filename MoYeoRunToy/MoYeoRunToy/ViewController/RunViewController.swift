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
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 5
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "RunViewController_NowPopular_CollectionView_Cell", for: indexPath) as? RunViewController_NowPopular_CollectionView_Cell else {
            return UICollectionViewCell()
        }
        cell.imageView.image = UIImage(named: "2.jpg")
        
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        
        let width = collectionView.bounds.width * 0.8
        let height = collectionView.bounds.height * 0.9
        
        return CGSize(width: width, height: height)
    }
}

class RunViewController_NowPopular_CollectionView_Cell : UICollectionViewCell {
    @IBOutlet weak var imageView: UIImageView!
    
}




class RunViewController_NewMission: UIViewController,UICollectionViewDataSource,UICollectionViewDelegateFlowLayout {
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 4
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "RunViewController_NewMission_CollectionView_Cell", for: indexPath) as? RunViewController_NewMission_CollectionView_Cell else {
            return UICollectionViewCell()
        }
        cell.imageView.image = UIImage(named: "2.jpg")
        
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        
        let width = collectionView.bounds.width * 0.4
        let height = collectionView.bounds.height * 0.4
        
        return CGSize(width: width, height: height)
    }
}

class RunViewController_NewMission_CollectionView_Cell: UICollectionViewCell{
    @IBOutlet weak var imageView: UIImageView!
    
}





class RunViewController_LastRecord: UIViewController,UICollectionViewDataSource,UICollectionViewDelegateFlowLayout {
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 2
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "RunViewController_LastRecord_CollectionView_Cell", for: indexPath) as? RunViewController_LastRecord_CollectionView_Cell else {
            return UICollectionViewCell()
        }
        cell.imageView.image = UIImage(named: "2.jpg")
        
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        
        let width = collectionView.bounds.width * 0.9
        let height = collectionView.bounds.height * 0.4
        
        return CGSize(width: width, height: height)
    }
}

class RunViewController_LastRecord_CollectionView_Cell: UICollectionViewCell {
    @IBOutlet weak var imageView: UIImageView!
    
}
