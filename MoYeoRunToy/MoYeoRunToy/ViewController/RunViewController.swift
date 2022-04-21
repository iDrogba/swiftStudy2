//
//  ViewController.swift
//  MoYeoRunToy
//
//  Created by 김상현 on 2022/03/11.
//

import UIKit

class RunViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setUI()
        
    }
    
    func setUI() {

    }
    
}

//셀 어떻게?
extension RunViewController: UICollectionViewDataSource {
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 10
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "RunViewController_RunningGuide_Cell", for: indexPath) as? RunViewController_RunningGuide_Cell else {
            return UICollectionViewCell()
        }
        
        cell.imageView.image = UIImage(named: "img1.jpeg")
        
        return cell
    }
    
}

//셀 크기
extension RunViewController: UICollectionViewDelegateFlowLayout {
        
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        
        let cellWidth = collectionView.bounds.size.width * 0.8
        let cellHeight = collectionView.bounds.size.height * 0.9
                
        return CGSize(width: cellWidth, height: cellHeight)
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return 10
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets {
        return UIEdgeInsets(top: 0, left: 20, bottom: 0, right: 0)
    }
    
}

// 셀 터치시
extension RunViewController : UICollectionViewDelegate {
    
}

class RunViewController_RunningGuide_Cell: UICollectionViewCell {
    
    @IBOutlet weak var imageView: UIImageView!

    
    
}
